

if {[file exists rtl_work]} {
          vdel -lib rtl_work -all

     }
     vlib rtl_work
     vmap work rtl_work

     ### Compile code ###
     ### Enter files here; copy line for multiple files ###
     vlog -sv -work work [pwd]/original_image.sv
     vlog -sv -work work [pwd]/VGA_controller.sv
     vlog -sv -work work -suppress 7061 [pwd]/turn.sv
     vlog -sv -work work [pwd]/edgeDet.sv
     vlog -sv -work work [pwd]/Filter.sv
     vlog -sv -work work [pwd]/Color_Mapper.sv
     #vlog -sv -work work [pwd]/top_level.sv
     vlog -sv -work work [pwd]/FSM.sv
     vlog -sv -work work [pwd]/clockdiv.sv
     vlog -sv -work work [pwd]/background_screen.sv
     vlog -sv -work work [pwd]/xgrid.sv
     vlog -sv -work work [pwd]/ogrid.sv
     vlog -sv -work work [pwd]/player1.sv
     vlog -sv -work work [pwd]/player2.sv
     vlog -sv -work work [pwd]/count.sv
     vlog -sv -work work [pwd]/count2.sv
     vlog -sv -work work [pwd]/count3.sv
     vlog -sv -work work [pwd]/count4.sv
     vlog -sv -work work [pwd]/count5.sv

     vlog -sv -work work [pwd]/FSMtestbench.sv
      vlog -sv -work work [pwd]/TurnTestbench.sv
      vlog -sv -work work [pwd]/FilterTestBench.sv

     ### Load design for simulation ###
     ### Replace topLevelModule with the name of your top level module ###
     ### Do not duplicate! ###
     vsim FilterTestBench

     ### Add waves here ###
	add wave *

     ### Run simulation ###
     # to see your design hierarchy and signals
     view structure

     # to see all signal names and current values
     view signals

     # Edit run time
     run 20000
