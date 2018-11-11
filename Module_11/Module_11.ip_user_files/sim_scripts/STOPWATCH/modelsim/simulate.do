onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.STOPWATCH xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {STOPWATCH.udo}

run -all

quit -force