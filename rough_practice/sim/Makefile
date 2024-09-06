top_module = practice
help:
	@echo =================================================================================
	@echo " USAGE   	--  make target                             				"
	@echo " clean   	=>  clean the earlier log and intermediate files.       	"
	@echo " run_sim 	=>  compile & run the simulation in batch mode.        		"
	@echo " run_test	=>  clean, compile & run the simulation in batch mode.		" 
	@echo " run_wave    =>	View waveform and verify functionality                  "      
	@echo =================================================================================


run_test: clean run_sim

run_sim: 
	iverilog -o output_sim ../design.v ../testbench.v
	vvp output_sim +exit

run_wave:
	gtkwave *.vcd
clean:
	rm -rf output_sim *.json *.vcd *.log *.svg
	clear 
	




