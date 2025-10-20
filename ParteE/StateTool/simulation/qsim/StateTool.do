onerror {quit -f}
vlib work
vlog -work work StateTool.vo
vlog -work work StateTool.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.StateTool_vlg_vec_tst
vcd file -direction StateTool.msim.vcd
vcd add -internal StateTool_vlg_vec_tst/*
vcd add -internal StateTool_vlg_vec_tst/i1/*
add wave /*
run -all
