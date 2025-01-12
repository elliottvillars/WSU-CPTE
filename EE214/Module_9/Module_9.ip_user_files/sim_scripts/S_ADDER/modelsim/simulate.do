onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlslice_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.S_ADDER xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {S_ADDER.udo}

run -all

quit -force
