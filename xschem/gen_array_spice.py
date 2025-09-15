import re
import numpy as np

'''
    Code to generate files for an array of N x N-size

'''
SPICE_FILE= 'array.spice'


class spice_gen:
    
    def __init__(self, spice_dir = '/home/hni/.xschem/simulations/', array_size=3, col_tran_w = 8, col_tran_l = 2):
        self.spice_dir = spice_dir
        self.pixel_spice = spice_dir+'pixel.spice'
        
        self.array_size = array_size

        self.subckt_struct=''

        self.col_struct = 'X0 PIX_OUT0 COL_SEL0 ARRAY_OUT GND sky130_fd_pr__nfet_01v8_lvt ad=4 pd=17 as=3.2 ps=16.8 w=8 l=2'
        self.col_tran_w = col_tran_w
        self.col_tran_l = col_tran_l

    def get_pixel_str(self):
        return_str=''
        with open(self.pixel_spice, 'r') as f:
            lines = f.readlines()
            return_str = ''.join(lines[:-1])
        for line in lines:
            if( '.subckt' in line):
                subckt_line = line
        
        return_str = return_str.replace('**.subckt', '.subckt') #removes comment from subcircuit line
        return_str = return_str.replace('**.ends', '.ends') #removes comment from subcircuit line

        self.subckt_struct = return_str.split('.subckt pixel')[1].split('\n')[0]
        return return_str, self.subckt_struct
   
    def pixel_inst(self,inst, row_num, col_num):
        ports = self.subckt_struct.replace('pix_out', 'PIX_OUT%i' %col_num)
        ports = ports.replace('ROW_SEL', 'ROW_SELx%ix' %row_num)
        ports = ports.replace('MP_IN ', 'PIX_INx%ix ' %(inst-1))
        subckt_inst = 'xPix%i'%inst + ports + ' pixel'
        
        ports = ports.split(' ')[1:]
        return subckt_inst, ports

    def get_SR_str(self):
        return_str=''
        SR_spice = '../../../SR1x3/spi/lvs/shift_register.spice'
        with open(SR_spice, 'r') as f:
            lines = f.readlines()
            return_str = ''.join(lines[:-1])
                
        return_str = return_str.replace('**.subckt', '.subckt') #removes comment from subcircuit line
        return_str = return_str.replace('**.ends', '.ends') #removes comment from subcircuit line

        subckt_struct = return_str.split('.subckt shift_register')[1].split('\n')[0]
        return return_str, subckt_struct
    
    def SR_inst(self, subckt_struct, inst, row=False):
        ports = subckt_struct.replace('[', 'x')
        ports = ports.replace(']', 'x')
        if row == True:
            ports = ports.replace('COL', 'ROW')
        subckt_inst = 'xSR%i'%inst + ports + ' shift_register'
        ports = ports.split(' ')[1:]
        return subckt_inst, ports
        
    def make_array(self):
        idx = 1
        output_str = [] 
        array_ports=[]
        #subckt line
        subckt_line = ".subckt pixel_array "


        for row in np.arange(0,self.array_size):
            for col in np.arange(0,self.array_size):

                output, ports = self.pixel_inst(idx,row,col)
                output_str.append(output)
                array_ports.extend([p for p in ports if 'PIX_OUT' not in p])
                idx+=1

        for col in np.arange(0,self.array_size):
            end_pix_num = col * self.array_size + (self.array_size-1)
            output_str.append(self.col_tran(idx, col, col))
            idx+=1
            array_ports.append('COL_SELx%ix' %col)
        
        array_ports.append('ARRAY_OUT')
        array_ports = list(set(array_ports))
        subckt_line += ' '.join(array_ports)
        output_str.insert(0, subckt_line)
        output_str.append('.ends')
        

        return output_str

        

    def col_tran(self,inst, col_num, pix_num):
        col_line = self.col_struct.replace('X0', 'X%i' %inst)
        col_line = col_line.replace('PIX_OUT0', 'PIX_OUT%i' %pix_num)
        col_line = col_line.replace('COL_SEL0', 'COL_SELx%ix' %col_num)
        
        return col_line
class xschem_gen:
    def __init__(self, schem_in, array_size = 100):
        self.schem_in = schem_in
        self.sym_in = schem_in[:-3]+'sym'
        self.array_size = array_size
        self.xschem_file = 'v {xschem version=3.0.0 file_version=1.2 }\n'\
                            'G {}\n'\
                            'K {}\n'\
                            'V {}\n'\
                            'S {}\n'\
                            'E {}\n'
        self.bus_replacement = 'C {devices/netlist_options.sym} -100 -100 0 0 {bus_replacement_char="xx"\nlvs_ignore=1}\n'
        self.port_x = []
        self.port_y=  []
        self.port_name = []
    def array_schem(self):
        return_str = self.xschem_file
        return_str += self.bus_replacement
        return_str += self.io_ports()
        return_str += self.pixel_array()
        return return_str
    def io_ports(self):
        with open(self.sym_in, 'r') as f:
            sym_lines = f.readlines()
        get_loc=False
        port_names = []
        port_x=[]
        port_y=[]

        for l in sym_lines:
            if get_loc == True:
                print(l)
                get_loc=False
                port_x.append(int(l.split(' ')[2]))
                port_y.append(int(l.split(' ')[3]))

            if 'dir' in l:
                name = l.split('name=')[1].split(' ')[0]
                port_names.append(name)
                get_loc = True

        self.port_x = port_x
        self.port_y = port_y
        self.port_name = port_names
         

        print(self.port_x)
        idx=0
        out_names = ['pix_out']
        bus_names = ['ROW_SEL', 'AMP_IN']
        
        bus_max = self.array_size**2 - 1
        port_lines=[]
        for p in port_names:
            if p in out_names:
                line = 'C {devices/opin.sym} -150 %i 0 0 {name=p%i lab=ARRAY_OUT}' %( (idx * 30), (idx+1))
            elif p in bus_names:
                max_val = self.array_size-1
                if 'AMP_IN' in p:
                    max_val=self.array_size**2 -1
                    p='PIX_IN' 
                line = 'C {devices/ipin.sym} -150 %i 0 0 {name=p%i lab=%s[0:%i]}' %( (idx * 30), (idx+1), p,max_val )
            else:
               line = 'C {devices/ipin.sym} -150 %i 0 0 {name=p%i lab=%s}' %( (idx * 30), (idx+1), p )
            idx += 1
            port_lines.append(line)
        port_lines.append('C {devices/ipin.sym} -150 %i 0 0 {name=p%i lab=COL_SEL[0:%i]}' %( (idx * 30), (idx+1),self.array_size-1))

        return '\n'.join(port_lines) 
    def pixel_array(self):
        x0 = 250
        y0 = 100
        pixel_lines=[]
        idx=0
        for i in range(self.array_size):
            for j in range(self.array_size):
                pixel_lines.append(self.pixel_inst(idx,x0+(j)*500, y0+(i)*300,i,j))
                idx+=1
        x_max=(x0 + i*500)
        y_max=(y0 + j*500)
        idx=0
        for i in range(self.array_size):
            pixel_lines.append(self.tran_inst(idx, x0+i*500, y_max, i))
            idx+=1
        return '\n'.join(pixel_lines) 
    def pixel_inst(self, inst,x,y,i,j):
        return_str = ''
        line = '\nC {pixel/pixel.sym} %i %i 0 0 {name=xPix%i}' %(x,y,inst)
        return_str+=line
        #place nets
        for idx, port in enumerate(self.port_name):
            print(port)
            if('pix_out' in port):
                line = '\nC {devices/lab_pin.sym} %i %i 2 0 {name=p1 sig_type=std_logic lab=%s[%i]}'\
                        %(x + self.port_x[idx]+20, y+self.port_y[idx], 'COL_OUT',j)
            elif('ROW_SEL' in port):
                line = '\nC {devices/lab_pin.sym} %i %i 0 0 {name=p1 sig_type=std_logic lab=%s[%i]}'\
                        %(x + self.port_x[idx], y+self.port_y[idx], port,i)
            elif('AMP_IN' in port):
                line = '\nC {devices/lab_pin.sym} %i %i 0 0 {name=p1 sig_type=std_logic lab=%s[%i]}'\
                        %(x + self.port_x[idx], y+self.port_y[idx], 'PIX_IN',(i)*self.array_size +j)

            else: 
                line = '\nC {devices/lab_pin.sym} %i %i 0 0 {name=p1 sig_type=std_logic lab=%s}'\
                        %(x + self.port_x[idx], y+self.port_y[idx], port)
            return_str+=line
        return return_str
    
    def tran_inst(self,inst,x,y,col_num):
        lines=[]
        nfet_line='C {sky130_fd_pr/nfet_01v8_lvt.sym} %i %i 3 0 {name=M%i\n'\
            'L=0.15 W=8 nf=1 mult=1\n'\
            """ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'" \n"""\
            """as="'int((nf+2)/2) * W/nf * 0.29'" \n"""\
            """ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"\n"""\
            """nrd="'0.29 / W'" nrs="'0.29 / W'" \n"""\
            'sa=0 sb=0 sd=0 model=nfet_01v8_lvt spiceprefix=X}'\
            %(x,y,inst)
        d_line='C {devices/lab_pin.sym} %i %i 2 1 {name=col%i sig_type=std_logic, lab=COL_OUT[%i]}'\
                %(x - 30, y-20, inst,col_num) 
        
        g_line='C {devices/lab_pin.sym} %i %i 3 0 {name=col%i sig_type=std_logic, lab=COL_SEL[%i]}'\
                %(x, y+20, inst+1,col_num) 
        s_line='C {devices/lab_pin.sym} %i %i 2 0 {name=col%i sig_type=std_logic, lab=ARRAY_OUT}'\
                %(x + 30, y-20, inst+2) 
        b_line='C {devices/lab_pin.sym} %i %i 2 0 {name=col%i sig_type=std_logic, lab=GND}'\
                %(x , y-20, inst+2) 


        lines.append(nfet_line)
        lines.append(d_line)
        lines.append(g_line)
        lines.append(s_line)
        lines.append(b_line)
        return '\n'.join(lines)
    '''
    def __init__(self, spice_in='array.spice', array_size = 3):
        self.spice_in = spice_in
        self.array_size = array_size
        self.xschem_file = 'v {xschem version=3.0.0 file_version=1.2 }\n'\
                            'G {}\n'\
                            'K {}\n'\
                            'V {}\n'\
                            'S {}\n'\
                            'E {}\n'
        self.bus_replacement = 'C {devices/netlist_options.sym} 0 0 0 0 {bus_replacement_char="xx"\nlvs_ignore=1}'
        self.port_line=''
        self.pix_ports=''
    def code_inst(self,x=0,y=0):
        lines = 'C {devices/code.sym} %i %i 0 0 {name=array_spice place=end value="\n' %(x,y)
        with open(self.spice_in,'r') as f:
            spice_lines = f.readlines()
        #need to remove subckt for pixel_array
        spice_code =[]
        in_array = False
        for line in spice_lines:
            if '.subckt pixel_array' in line:
                self.port_line = line
                spice_code.append('*' + line)
                in_array=True
            elif '.subckt pixel' in line:
                self.pix_ports = line

            elif in_array and '.ends' in line:
                spice_code.append('*' + line)
            else:
                spice_code.append(line)

        lines+='\n'.join(spice_code)
        lines+='\n"}\n'
        
        return lines
    def ports(self):
        ports = self.port_line.split(' ')[2:]
        bus_names=[]
        bus_ports=[]

        single_ports=[]
        
        for p in ports:
            substr = p.strip().split('x')
            print(substr)
            if len(substr)==1:
                single_ports.append(p)
            else:
                port_name = substr[0]
                
                if port_name not in bus_names:
                    bus_names.append(substr[0])
        for name in bus_names:
            idxs=[]
            for p in ports:
                if name in p:
                    substr = p.strip().split('x')
                    idxs.append(int(substr[1]))
            bus_length = max(idxs)
            bus_ports.append('%s[0:%i]' %(name, bus_length))

        return single_ports, bus_ports 
    def array_sch(self):
        output_str = []
        output_str.append(self.xschem_file)
        output_str.append(self.bus_replacement)
        output_str.append(self.code_inst())
        
        return '\n'.join(output_str)
    def place_ports(self, out_names=['ARRAY_OUT']):

        port_lines=[]
        ports, busses = self.ports()
        print(ports,busses)
        idx=1
        ports.extend(busses)
        for p in ports:
            if p in out_names:
                line = 'C {devices/opin.sym} -150 %i 0 0 {name=p%i lab=%s}' %( (idx * 30), (idx+1), p )
            else:
                line = 'C {devices/ipin.sym} -150 %i 0 0 {name=p%i lab=%s}' %( (idx * 30), (idx+1), p )
            idx += 1
            port_lines.append(line)
        return '\n'.join(port_lines)
    def place_pixel(self, inst,x,y):
        pix_line='C {pixel/pixel.sym} %i %i 0 0 {name=x%i}' %(x,y,inst)
        
        ports=[]
        for port in self.pix_ports.split(' ')[2:]:
            ports.append(port.strip())
        print(ports)
        
        return(pix_line)

'''
if __name__== "__main__":
#    spice = spice_gen(array_size=100)
#    pixel_spice, subckt_str = spice.get_pixel_str()
#    test = spice.get_SR_str()
#    print(spice.SR_inst(test[1],1, row=True))
#    output = spice.make_array()
#    with open(SPICE_FILE, 'w') as f:
#        f.write(pixel_spice)
#        f.write('\n'.join(output))


    sch = xschem_gen('pixel/pixel.sch')
    output = sch.array_schem()
    print(output)
#    output += sch.place_ports()

#    print(sch.place_pixel(0,0,0))
    with open('array.sch', 'w') as f:
        f.write(output)

