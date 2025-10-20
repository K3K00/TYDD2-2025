onerror {quit -f}
vlib work
vlog -work work MultiplicadorConSigno.vo
vlog -work work MultiplicadorConSigno.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MultiplicadorConSigno_vlg_vec_tst
vcd file -direction MultiplicadorConSigno.msim.vcd
vcd add -internal MultiplicadorConSigno_vlg_vec_tst/*
vcd add -internal MultiplicadorConSigno_vlg_vec_tst/i1/*
add wave /*
run -all
