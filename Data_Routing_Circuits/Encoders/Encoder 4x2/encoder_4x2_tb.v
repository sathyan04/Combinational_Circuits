`timescale 1ns / 1ps

module encoder_4x2_tb;
    reg [3:0] in;
    wire [1:0] out;
    encoder_4x2 dut(.in(in),.out(out));
    initial begin
        $monitor("in=%b | out=%b",in,out);
        
        in=4'b0001; #10;
        in=4'b0010; #10;
        in=4'b0100; #10;
        in=4'b1000; #10;
        
        in=4'b0000; #10;
        in=4'b0101; #10;
        in=4'b1010; #10;
        in=4'b1111; #10;
        
        $finish;
    end
endmodule