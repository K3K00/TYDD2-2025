transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {CircuitoCombinacional.vo}

vcom -93 -work work {C:/Users/Administrador/Desktop/TyDD2 2025/ParteA/PruebaCircComb.vhd}

vsim -t 1ps -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  PruebaCircComb

add wave *
view structure
view signals
run 80 ns
