v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -340 -380 -340 -340 { lab=io_clamp_low[2]}
N -340 -280 -340 -260 { lab=vssa1}
N -340 -240 -340 -220 { lab=io_clamp_high[2]}
N -340 -160 -340 -150 { lab=vssa1}
N -340 -110 -340 -90 { lab=io_clamp_low[1]}
N -340 -30 -340 -10 { lab=vssa1}
N 150 -380 150 -350 { lab=io_clamp_high[1]}
N 150 -290 150 -270 { lab=vssa1}
N 150 -240 150 -220 { lab=io_clamp_low[0]}
N 150 -160 150 -150 { lab=vssa1}
N 150 -130 150 -120 { lab=io_clamp_high[0]}
N 150 -60 150 -40 { lab=io_analog[4]}
N -380 -380 -340 -380 { lab=io_clamp_low[2]}
N -380 -260 -340 -260 { lab=vssa1}
N -380 -240 -340 -240 { lab=io_clamp_high[2]}
N -380 -150 -340 -150 { lab=vssa1}
N -380 -110 -340 -110 { lab=io_clamp_low[1]}
N -380 -10 -340 -10 { lab=vssa1}
N 120 -380 150 -380 { lab=io_clamp_high[1]}
N 120 -270 150 -270 { lab=vssa1}
N 120 -240 150 -240 { lab=io_clamp_low[0]}
N 120 -150 150 -150 { lab=vssa1}
N 120 -130 150 -130 { lab=io_clamp_high[0]}
N 120 -40 150 -40 { lab=io_analog[4]}
N -340 30 -340 70 { lab=io_oeb[12]}
N -340 130 -340 150 { lab=vssd1}
N -340 170 -340 190 { lab=io_oeb[16]}
N -340 250 -340 260 { lab=vssd1}
N 150 30 150 60 { lab=io_oeb[11]}
N 150 120 150 140 { lab=vssd1}
N 150 170 150 190 { lab=io_oeb[15]}
N 150 250 150 260 { lab=vssd1}
N -380 30 -340 30 { lab=io_oeb[12]}
N -380 150 -340 150 { lab=vssd1}
N -380 170 -340 170 { lab=io_oeb[16]}
N -380 260 -340 260 { lab=vssd1}
N 120 30 150 30 { lab=io_oeb[11]}
N 120 140 150 140 { lab=vssd1}
N 120 170 150 170 { lab=io_oeb[15]}
N 120 260 150 260 { lab=vssd1}
C {sky130_fd_pr/res_generic_m1.sym} -340 -310 0 0 {name=R1
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} -340 -190 0 0 {name=R2
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} -340 -60 0 0 {name=R4
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 150 -320 0 0 {name=R5
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 150 -190 0 0 {name=R6
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 150 -90 0 0 {name=R7
W=11
L=0.25
model=res_generic_m3
mult=1}
C {devices/lab_pin.sym} -380 -380 0 0 {name=l13 sig_type=std_logic lab=io_clamp_low[2]}
C {devices/lab_pin.sym} -380 -240 0 0 {name=l14 sig_type=std_logic lab=io_clamp_high[2]}
C {devices/lab_pin.sym} -380 -110 0 0 {name=l15 sig_type=std_logic lab=io_clamp_low[1]}
C {devices/lab_pin.sym} 120 -380 0 0 {name=l16 sig_type=std_logic lab=io_clamp_high[1]}
C {devices/lab_pin.sym} 120 -240 0 0 {name=l17 sig_type=std_logic lab=io_clamp_low[0]}
C {devices/lab_pin.sym} -380 -260 0 0 {name=l18 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -380 -150 0 0 {name=l19 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 120 -270 0 0 {name=l20 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 120 -150 0 0 {name=l21 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -380 -10 0 0 {name=l22 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 120 -130 0 0 {name=l23 sig_type=std_logic lab=io_clamp_high[0]}
C {devices/lab_pin.sym} 120 -40 0 0 {name=l24 sig_type=std_logic lab=io_analog[4]}
C {sky130_fd_pr/res_generic_m1.sym} -340 100 0 0 {name=R8
W=0.56
L=0.49
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} -340 220 0 0 {name=R9
W=0.56
L=0.31
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 150 90 0 0 {name=R11
W=0.56
L=0.58
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 150 220 0 0 {name=R12
W=0.56
L=0.6
model=res_generic_m3
mult=1}
C {devices/lab_pin.sym} 120 170 0 0 {name=l25 sig_type=std_logic lab=io_oeb[15]}
C {devices/lab_pin.sym} -380 170 0 0 {name=l26 sig_type=std_logic lab=io_oeb[16]}
C {devices/lab_pin.sym} 120 30 0 0 {name=l27 sig_type=std_logic lab=io_oeb[11]}
C {devices/lab_pin.sym} -380 30 0 0 {name=l28 sig_type=std_logic lab=io_oeb[12]}
C {devices/lab_pin.sym} -380 150 0 0 {name=l29 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} -380 260 0 0 {name=l30 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 120 140 0 0 {name=l31 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 120 260 0 0 {name=l32 sig_type=std_logic lab=vssd1}
