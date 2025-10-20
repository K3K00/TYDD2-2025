transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {MultiplicadorSinSigno.vo}

vcom -93 -work work {C:/Users/Administrador/Desktop/TyDD2 2025/ParteB/PruebaMultSinSigno.vhd}

vsim -t 1ps -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  PruebaMultSinSigno

add wave *
view structure
view signals
run 160 ns
