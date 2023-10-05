//Testbench Code for Serial in Parallel Out Register 
module SIPO_Shift_Register_tb();

reg Din,clk,reset;
wire [3:0]Q;

SIPO_Shift_Register dut(.Din(Din),.clk(clk),.reset(reset),.Q(Q));

initial begin
Din=1'b0;
clk=1'b0;
reset=1'b1;
#6  reset=1'b0;
#8  Din=1'b1;
#8  Din=1'b0;
#8  Din=1'b1;
#8  Din=1'b0;
//Add More test Cases Here
#60 $finish;

end

always #5 clk=~clk;

endmodule
