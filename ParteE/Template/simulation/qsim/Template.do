onerror {quit -f}
vlib work
vlog -work work Template.vo
vlog -work work Template.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Template_vlg_vec_tst
vcd file -direction Template.msim.vcd
vcd add -internal Template_vlg_vec_tst/*
vcd add -internal Template_vlg_vec_tst/i1/*
add wave /*
run -all
