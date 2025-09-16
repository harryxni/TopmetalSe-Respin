v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
C {array3.sym} 4420 70 0 0 {name=x1}
C {devices/lab_pin.sym} 4220 -250 2 0 {name=p33 sig_type=std_logic lab=io_analog[0]}
C {array_SR.sym} 3770 -70 0 0 {name=x2}
C {opamp_diego/opamp_wrapper.sym} 4720 -40 0 0 {name=x3}
C {opamp_diego/opamp_wrapper.sym} 4070 -230 0 0 {name=x4}
C {biases.sym} 3920 -460 0 0 {name=x5}
C {devices/lab_pin.sym} 4070 -500 2 0 {name=p34 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 4070 -480 2 0 {name=p35 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 4070 -460 2 0 {name=p36 sig_type=std_logic lab=io_analog[6]
}
C {devices/lab_pin.sym} 4070 -440 2 0 {name=p37 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 4070 -420 2 0 {name=p38 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} 3920 -250 1 0 {name=p39 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 3920 -210 3 0 {name=p40 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} 3770 -500 0 0 {name=p41 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 3770 -480 0 0 {name=p42 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4570 -60 1 0 {name=p45 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 4570 -20 3 0 {name=p46 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} 3620 -230 0 0 {name=p49 sig_type=std_logic lab=io_analog[6]
}
C {devices/lab_pin.sym} 3620 -90 0 0 {name=p50 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 3620 -110 0 0 {name=p51 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 3620 -170 0 0 {name=p52 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 3620 -130 0 0 {name=p53 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4270 0 0 0 {name=p54 sig_type=std_logic lab=io_analog[6]
}
C {devices/lab_pin.sym} 4270 120 0 0 {name=p55 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 4270 140 0 0 {name=p56 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 4870 -60 2 0 {name=p59 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_pin.sym} 4270 -40 0 0 {name=p57 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 4270 -20 0 0 {name=p60 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4220 -230 2 0 {name=p43 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4220 -210 2 0 {name=p44 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 4870 -40 2 0 {name=p58 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4870 -20 2 0 {name=p61 sig_type=std_logic lab=vccd1
}
C {devices/lab_pin.sym} 3620 -210 0 0 {name=p47 sig_type=std_logic lab=io_analog[10]}
C {devices/lab_pin.sym} 3620 -190 0 0 {name=p48 sig_type=std_logic lab=io_analog[7]}
C {devices/lab_pin.sym} 3620 -150 0 0 {name=p62 sig_type=std_logic lab=io_analog[8]}
C {devices/lab_pin.sym} 3620 -70 0 0 {name=p63 sig_type=std_logic lab=io_analog[9]}
C {devices/lab_pin.sym} 4270 160 0 0 {name=p64 sig_type=std_logic lab=io_analog[9]}
C {devices/lab_pin.sym} 4270 80 0 0 {name=p65 sig_type=std_logic lab=io_analog[8]}
C {devices/lab_pin.sym} 4270 20 0 0 {name=p66 sig_type=std_logic lab=io_analog[10]}
C {devices/lab_pin.sym} 4270 40 0 0 {name=p67 sig_type=std_logic lab=io_analog[7]}
C {devices/lab_pin.sym} 3620 90 0 0 {name=p68 sig_type=std_logic lab=io_in[6]}
C {devices/lab_pin.sym} 3620 70 0 0 {name=p69 sig_type=std_logic lab=io_in[16]}
C {devices/lab_pin.sym} 3620 50 0 0 {name=p70 sig_type=std_logic lab=io_in[9]}
C {devices/lab_pin.sym} 3620 30 0 0 {name=p71 sig_type=std_logic lab=io_in[19]}
C {devices/lab_pin.sym} 3620 10 0 0 {name=p72 sig_type=std_logic lab=io_in[8]}
C {devices/lab_pin.sym} 3620 -10 0 0 {name=p73 sig_type=std_logic lab=io_in[18]}
C {devices/lab_pin.sym} 3620 -30 0 0 {name=p74 sig_type=std_logic lab=io_in[7]}
C {devices/lab_pin.sym} 3620 -50 0 0 {name=p75 sig_type=std_logic lab=io_in[17]}
C {devices/lab_pin.sym} 4270 60 0 0 {name=p76 sig_type=std_logic lab=io_in[20:22]}
C {devices/lab_pin.sym} 4270 180 0 0 {name=p77 sig_type=std_logic lab="(io_in[23:24], io_in[15])"}
