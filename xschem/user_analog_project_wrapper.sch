v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 3670 300 3670 340 { lab=io_clamp_low[2]}
N 3670 400 3670 420 { lab=vssa1}
N 3670 440 3670 460 { lab=io_clamp_high[2]}
N 3670 520 3670 530 { lab=vssa1}
N 3670 570 3670 590 { lab=io_clamp_low[1]}
N 3670 650 3670 670 { lab=vssa1}
N 4160 300 4160 330 { lab=io_clamp_high[1]}
N 4160 390 4160 410 { lab=vssa1}
N 4160 440 4160 460 { lab=io_clamp_low[0]}
N 4160 520 4160 530 { lab=vssa1}
N 4160 550 4160 560 { lab=io_clamp_high[0]}
N 4160 620 4160 640 { lab=io_analog[4]}
N 3630 300 3670 300 { lab=io_clamp_low[2]}
N 3630 420 3670 420 { lab=vssa1}
N 3630 440 3670 440 { lab=io_clamp_high[2]}
N 3630 530 3670 530 { lab=vssa1}
N 3630 570 3670 570 { lab=io_clamp_low[1]}
N 3630 670 3670 670 { lab=vssa1}
N 4130 300 4160 300 { lab=io_clamp_high[1]}
N 4130 410 4160 410 { lab=vssa1}
N 4130 440 4160 440 { lab=io_clamp_low[0]}
N 4130 530 4160 530 { lab=vssa1}
N 4130 550 4160 550 { lab=io_clamp_high[0]}
N 4130 640 4160 640 { lab=io_analog[4]}
N 3670 710 3670 750 { lab=io_oeb[12]}
N 3670 810 3670 830 { lab=vssd1}
N 3670 850 3670 870 { lab=io_oeb[16]}
N 3670 930 3670 940 { lab=vssd1}
N 4160 710 4160 740 { lab=io_oeb[11]}
N 4160 800 4160 820 { lab=vssd1}
N 4160 850 4160 870 { lab=io_oeb[15]}
N 4160 930 4160 940 { lab=vssd1}
N 3630 710 3670 710 { lab=io_oeb[12]}
N 3630 830 3670 830 { lab=vssd1}
N 3630 850 3670 850 { lab=io_oeb[16]}
N 3630 940 3670 940 { lab=vssd1}
N 4130 710 4160 710 { lab=io_oeb[11]}
N 4130 820 4160 820 { lab=vssd1}
N 4130 850 4160 850 { lab=io_oeb[15]}
N 4130 940 4160 940 { lab=vssd1}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {sky130_fd_pr/res_generic_m1.sym} 3670 370 0 0 {name=R1
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 3670 490 0 0 {name=R2
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 3670 620 0 0 {name=R4
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4160 360 0 0 {name=R5
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4160 490 0 0 {name=R6
W=11
L=0.25
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4160 590 0 0 {name=R7
W=11
L=0.25
model=res_generic_m3
mult=1}
C {devices/lab_pin.sym} 3630 300 0 0 {name=l13 sig_type=std_logic lab=io_clamp_low[2]}
C {devices/lab_pin.sym} 3630 440 0 0 {name=l14 sig_type=std_logic lab=io_clamp_high[2]}
C {devices/lab_pin.sym} 3630 570 0 0 {name=l15 sig_type=std_logic lab=io_clamp_low[1]}
C {devices/lab_pin.sym} 4130 300 0 0 {name=l16 sig_type=std_logic lab=io_clamp_high[1]}
C {devices/lab_pin.sym} 4130 440 0 0 {name=l17 sig_type=std_logic lab=io_clamp_low[0]}
C {devices/lab_pin.sym} 3630 420 0 0 {name=l18 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 3630 530 0 0 {name=l19 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 4130 410 0 0 {name=l20 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 4130 530 0 0 {name=l21 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 3630 670 0 0 {name=l22 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 4130 550 0 0 {name=l23 sig_type=std_logic lab=io_clamp_high[0]}
C {devices/lab_pin.sym} 4130 640 0 0 {name=l24 sig_type=std_logic lab=io_analog[4]}
C {sky130_fd_pr/res_generic_m1.sym} 3670 780 0 0 {name=R8
W=0.56
L=0.49
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 3670 900 0 0 {name=R9
W=0.56
L=0.31
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4160 770 0 0 {name=R11
W=0.56
L=0.58
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4160 900 0 0 {name=R12
W=0.56
L=0.6
model=res_generic_m3
mult=1}
C {devices/lab_pin.sym} 4130 850 0 0 {name=l25 sig_type=std_logic lab=io_oeb[15]}
C {devices/lab_pin.sym} 3630 850 0 0 {name=l26 sig_type=std_logic lab=io_oeb[16]}
C {devices/lab_pin.sym} 4130 710 0 0 {name=l27 sig_type=std_logic lab=io_oeb[11]}
C {devices/lab_pin.sym} 3630 710 0 0 {name=l28 sig_type=std_logic lab=io_oeb[12]}
C {devices/lab_pin.sym} 3630 830 0 0 {name=l29 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 3630 940 0 0 {name=l30 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4130 820 0 0 {name=l31 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4130 940 0 0 {name=l32 sig_type=std_logic lab=vssd1}
C {array3.sym} 4560 -260 0 0 {name=x1}
C {devices/lab_pin.sym} 5010 -390 2 0 {name=p33 sig_type=std_logic lab=io_analog[0]}
C {array_SR.sym} 3770 -70 0 0 {name=x2}
C {opamp_diego/opamp_wrapper.sym} 4860 -370 0 0 {name=x3}
C {opamp_diego/opamp_wrapper.sym} 4070 -230 0 0 {name=x4}
C {biases.sym} 3920 -460 0 0 {name=x5}
C {devices/lab_pin.sym} 4070 -500 2 0 {name=p34 sig_type=std_logic lab=OUT_IB}
C {devices/lab_pin.sym} 4070 -480 2 0 {name=p35 sig_type=std_logic lab=NB1}
C {devices/lab_pin.sym} 4070 -460 2 0 {name=p36 sig_type=std_logic lab=SF_IB
}
C {devices/lab_pin.sym} 4070 -440 2 0 {name=p37 sig_type=std_logic lab=NB2}
C {devices/lab_pin.sym} 4070 -420 2 0 {name=p38 sig_type=std_logic lab=AMP_IB}
C {devices/lab_pin.sym} 3920 -250 1 0 {name=p39 sig_type=std_logic lab=OUT_IB}
C {devices/lab_pin.sym} 3920 -210 3 0 {name=p40 sig_type=std_logic lab=AMP_IB}
C {devices/lab_pin.sym} 3770 -500 0 0 {name=p41 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 3770 -480 0 0 {name=p42 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4710 -390 1 0 {name=p45 sig_type=std_logic lab=OUT_IB}
C {devices/lab_pin.sym} 4710 -350 3 0 {name=p46 sig_type=std_logic lab=AMP_IB}
C {devices/lab_pin.sym} 3620 -230 0 0 {name=p49 sig_type=std_logic lab=SF_IB
}
C {devices/lab_pin.sym} 3620 -90 0 0 {name=p50 sig_type=std_logic lab=NB1}
C {devices/lab_pin.sym} 3620 -110 0 0 {name=p51 sig_type=std_logic lab=NB2}
C {devices/lab_pin.sym} 3620 -170 0 0 {name=p52 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 3620 -130 0 0 {name=p53 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4410 -330 0 0 {name=p54 sig_type=std_logic lab=SF_IB
}
C {devices/lab_pin.sym} 4410 -210 0 0 {name=p55 sig_type=std_logic lab=NB2}
C {devices/lab_pin.sym} 4410 -190 0 0 {name=p56 sig_type=std_logic lab=NB1}
C {devices/lab_pin.sym} 4220 -250 2 0 {name=p59 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_pin.sym} 4410 -370 0 0 {name=p57 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 4410 -350 0 0 {name=p60 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4220 -230 2 0 {name=p43 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4220 -210 2 0 {name=p44 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 5010 -370 2 0 {name=p58 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 5010 -350 2 0 {name=p61 sig_type=std_logic lab=vccd1
}
