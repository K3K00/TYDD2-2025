transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrador/Desktop/TyDD2 2025/ParteA/CircuitoCombinacional.vhd}

vcom -93 -work work {C:/Users/Administrador/Desktop/TyDD2 2025/ParteA/PruebaCircComb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  PruebaCircComb

add wave *
view structure
view signals
run 80 ns
