`timescale 1ns / 1ps

module demux_1x4(
    input in,
    input [1:0] sel,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
    );
    always@(*)begin
        y0=0;
        y1=0;
        y2=0;
        y3=0;
        case(sel)
            2'b00:y0=in;
            2'b01:y1=in;
            2'b10:y2=in;
            2'b11:y3=in;
        endcase
    end      
endmodule