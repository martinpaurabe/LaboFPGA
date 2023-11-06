transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/mpaur/OneDrive/ITBA/Materias/DSP\ y\ FPGA/FPGA/EjemClase/EjemClase {C:/Users/mpaur/OneDrive/ITBA/Materias/DSP y FPGA/FPGA/EjemClase/EjemClase/ejem1.v}
vlog -vlog01compat -work work +incdir+C:/Users/mpaur/OneDrive/ITBA/Materias/DSP\ y\ FPGA/FPGA/EjemClase/EjemClase {C:/Users/mpaur/OneDrive/ITBA/Materias/DSP y FPGA/FPGA/EjemClase/EjemClase/subejem.v}

vlog -vlog01compat -work work +incdir+C:/Users/mpaur/OneDrive/ITBA/Materias/DSP\ y\ FPGA/FPGA/EjemClase/EjemClase {C:/Users/mpaur/OneDrive/ITBA/Materias/DSP y FPGA/FPGA/EjemClase/EjemClase/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
