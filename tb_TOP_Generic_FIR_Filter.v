`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_TOP_Generic_FIR_Filter;
reg clk_data, clk_filter, rst; //clk_data가 clk_filter보다 CPS배 빠름
reg [15:0] in_data;
wire [15:0] out_data;

TOP_Genric_FIR_Filter u7(
.clk_data(clk_data),
.clk_filter(clk_filter),
.rst(rst),
.in_data(in_data),
.out_data(out_data)
);

//Clk filter의 #x = clk_data의 주기 * CPS
always begin #1 clk_data = ~clk_data; end
always begin #2 cTlk_filter = ~clk_filter; end

initial begin
clk_data = 1; clk_filter = 1; rst = 1; in_data=0;
//CPS*2로 첫 #x 조절
#4 rst = 0; in_data = 1;
#2 rst = 0; in_data = 2;
#2 rst = 0; in_data = 3;
#2 rst = 0; in_data = 4;
#2 rst = 0; in_data = 6;
#2 rst = 0; in_data = 7;
#2 rst = 0; in_data = 8;
#2 rst = 0; in_data = 9;
#2 rst = 0; in_data = 0;

#100 $finish;
end


endmodule
