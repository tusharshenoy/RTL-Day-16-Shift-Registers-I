//Verilog Code for Serial in Serial Out Register 
module SISO_Shift_Register(Din,clk,reset,Dout);

input Din,clk,reset;
output Dout;
wire [2:0]Q;

D_Flip_Flop FF1(.D(Din),.reset(reset),.clk(clk),.Q(Q[0]));

D_Flip_Flop FF2(.D(Q[0]),.reset(reset),.clk(clk),.Q(Q[1]));

D_Flip_Flop FF3(.D(Q[1]),.reset(reset),.clk(clk),.Q(Q[2]));

D_Flip_Flop FF4(.D(Q[2]),.reset(reset),.clk(clk),.Q(Dout));

endmodule
