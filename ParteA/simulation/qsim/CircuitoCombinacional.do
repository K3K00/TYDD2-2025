onerror {quit -f}
vlib work
vlog -work work CircuitoCombinacional.vo
vlog -work work CircuitoCombinacional.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CircuitoCombinacional_vlg_vec_tst
vcd file -direction CircuitoCombinacional.msim.vcd
vcd add -internal CircuitoCombinacional_vlg_vec_tst/*
vcd add -internal CircuitoCombinacional_vlg_vec_tst/i1/*
add wave /*
run -all
