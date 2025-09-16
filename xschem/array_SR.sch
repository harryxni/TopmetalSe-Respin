v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 170 -70 170 {
lab=ROW_SEL[99:0]}
N 520 180 560 180 {
lab=COL_SEL[99:0]}
N 360 -110 420 -110 {
lab=ARRAY_OUT}
C {array100.sym} 210 -10 0 0 {name=x1}
C {devices/lab_pin.sym} -70 170 2 0 {name=p1 sig_type=std_logic lab=ROW_SEL[99:0]}
C {devices/lab_pin.sym} 560 180 2 0 {name=p3 sig_type=std_logic lab=COL_SEL[99:0]}
C {devices/lab_pin.sym} -410 150 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 160 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 420 -110 0 0 {name=p14 lab=ARRAY_OUT}
C {devices/lab_pin.sym} -410 170 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 220 180 0 0 {name=p16 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 220 200 0 0 {name=p26 lab=COL_ENA}
C {devices/ipin.sym} 220 220 0 0 {name=p27 lab=COL_RST}
C {devices/ipin.sym} 220 240 0 0 {name=p28 lab=COL_DIN}
C {devices/ipin.sym} 220 260 0 0 {name=p29 lab=COL_CLK}
C {devices/ipin.sym} -410 190 0 0 {name=p30 lab=ROW_ENA}
C {devices/ipin.sym} -410 210 0 0 {name=p31 lab=ROW_RST}
C {devices/ipin.sym} -410 230 0 0 {name=p32 lab=ROW_DIN}
C {devices/ipin.sym} -410 250 0 0 {name=p33 lab=ROW_CLK}
C {devices/lab_pin.sym} 60 -110 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 60 -90 0 0 {name=p5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 60 -10 0 0 {name=p6 sig_type=std_logic lab=ROW_SEL[0:99]}
C {devices/lab_pin.sym} 60 90 0 0 {name=p8 sig_type=std_logic lab=COL_SEL[0:99]}
C {devices/ipin.sym} 60 -30 0 0 {name=p18 lab=VBIAS}
C {devices/ipin.sym} 60 10 0 0 {name=p19 lab=VREF}
C {devices/ipin.sym} 60 50 0 0 {name=p20 lab=NB1}
C {devices/ipin.sym} 60 -50 0 0 {name=p21 lab=gring}
C {devices/ipin.sym} 60 70 0 0 {name=p23 lab=CSA_VREF}
C {devices/ipin.sym} 60 30 0 0 {name=p10 lab=NB2}
C {devices/ipin.sym} 60 -70 0 0 {name=p12 lab=SF_IB}
C {devices/ipin.sym} -210 -20 0 0 {name=p13 lab=VDD}
C {devices/ipin.sym} -210 10 0 0 {name=p17 lab=GND}
C {shift_register.sym} -270 210 0 0 {name=x3}
C {shift_registerC.sym} 360 220 0 0 {name=x2}
