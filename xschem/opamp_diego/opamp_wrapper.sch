v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 20 -90 20 {
lab=AOUT}
N -130 20 -130 110 {
lab=AOUT}
N 210 -60 210 -20 {
lab=VDD}
N -130 -60 210 -60 {
lab=VDD}
N -160 -20 -90 -20 {
lab=iref}
N -180 10 -180 20 {
lab=ARRAY_OUT}
N -180 50 -160 50 {
lab=VSS}
N -160 50 -160 80 {
lab=VSS}
N -180 80 -160 80 {
lab=VSS}
N -130 110 240 110 {
lab=AOUT}
N -180 -0 -180 10 {
lab=ARRAY_OUT}
N -110 0 -90 -0 {
lab=ARRAY_OUT}
N -180 -20 -160 -20 {
lab=iref}
N -260 50 -220 50 {
lab=OUT_IB}
N -300 0 -110 0 {
lab=ARRAY_OUT}
N -350 150 -320 150 {
lab=VSS}
N -320 150 -320 180 {
lab=VSS}
N -350 180 -320 180 {
lab=VSS}
N 210 0 230 0 {
lab=AOUT}
N 230 -0 230 110 {
lab=AOUT}
N 210 20 210 50 {
lab=VSS}
N 180 50 210 50 {
lab=VSS}
N -180 80 -180 140 {
lab=VSS}
N -350 60 -350 120 {
lab=iref}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -200 50 0 0 {name=M8
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} -300 0 0 0 {name=p10 lab=ARRAY_OUT}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -370 150 0 0 {name=M1
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} -390 150 0 0 {name=p2 lab=AMP_IB}
C {devices/lab_pin.sym} -350 180 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -350 60 0 0 {name=p4 sig_type=std_logic lab=iref
}
C {devices/lab_pin.sym} -180 -20 0 0 {name=p5 sig_type=std_logic lab=iref
}
C {devices/iopin.sym} -130 -60 2 0 {name=p6 lab=VDD}
C {devices/opin.sym} -460 -380 0 0 {name=p9 lab=AOUT}
C {devices/lab_pin.sym} 230 0 2 0 {name=p8 sig_type=std_logic lab=AOUT}
C {devices/ipin.sym} -460 -360 0 0 {name=p11 lab=OUT_IB}
C {devices/lab_pin.sym} -260 50 0 0 {name=p1 sig_type=std_logic lab=OUT_IB}
C {devices/iopin.sym} -460 -330 2 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} -180 140 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 50 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {/home/hni/snrlab-ic-sky130-explorer-pixel-v0/Modules/uw_pixel/Schematic/opamp_diego/opamp_v1.sym} 60 0 0 0 {name=x2}
