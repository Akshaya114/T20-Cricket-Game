//Testbench for simulation of T20 Cricket Game. Disable this file when running on board.
module tb;

// Inputs
reg clk;
reg reset;
reg ball_sw;
reg team_switch;
    
// Outputs
wire inning_over;
wire game_over;
wire winner;
wire [3:0] lfsr_out;
wire [7:0] runs;
wire [3:0] wickets;

 // Instantiate the Unit Under Test (UUT)
cricket_game_sim uut (clk,reset,ball_sw,team_switch,inning_over,game_over,winner,lfsr_out,runs,wickets);

//Initialize inputs
initial begin
  ball_sw = 0;
  team_switch = 0;
  reset = 1;
  #80
  reset = 0;
  #400;
end

//Toggle inputs periodically
always begin
    clk = 0;
    #5; // 50% duty cycle
    clk = 1;
    #5;
end 
always begin
    ball_sw = 0;
    #20;
    ball_sw = 1;
    #20;
end     
endmodule