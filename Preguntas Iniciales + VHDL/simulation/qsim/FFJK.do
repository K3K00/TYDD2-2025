onerror {quit -f}
vlib work
vlog -work work FFJK.vo
vlog -work work FFJK.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FFJK_vlg_vec_tst
vcd file -direction FFJK.msim.vcd
vcd add -internal FFJK_vlg_vec_tst/*
vcd add -internal FFJK_vlg_vec_tst/i1/*
add wave /*
run -all
