vlog -work work C:/Users/Administrador/Desktop/TyDD2 2025/ParteD/simulation/modelsim/PruebaMultiModyCA2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MultiModyCA2_vlg_vec_tst
onerror {resume}
add wave {MultiModyCA2_vlg_vec_tst/i1/A0}
add wave {MultiModyCA2_vlg_vec_tst/i1/A1}
add wave {MultiModyCA2_vlg_vec_tst/i1/B0}
add wave {MultiModyCA2_vlg_vec_tst/i1/B1}
add wave {MultiModyCA2_vlg_vec_tst/i1/clk}
add wave {MultiModyCA2_vlg_vec_tst/i1/s0}
add wave {MultiModyCA2_vlg_vec_tst/i1/s1}
add wave {MultiModyCA2_vlg_vec_tst/i1/s2}
add wave {MultiModyCA2_vlg_vec_tst/i1/s3}
add wave {MultiModyCA2_vlg_vec_tst/i1/u0}
add wave {MultiModyCA2_vlg_vec_tst/i1/u1}
add wave {MultiModyCA2_vlg_vec_tst/i1/u2}
add wave {MultiModyCA2_vlg_vec_tst/i1/u3}
run -all
