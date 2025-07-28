`timescale 1ns / 1ps

module demux_1x8(
    input in,
    input [2:0]sel,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3,
    output reg y4,
    output reg y5,
    output reg y6,
    output reg y7
    );
    always@(*)begin
        y0=0;
        y1=0;
        y2=0;
        y3=0;
        y4=0;
        y5=0;
        y6=0;
        y7=0;
        case(sel)
            3'b000: y0=in;
            3'b001: y1=in;
            3'b010: y2=in;
            3'b011: y3=in;
            3'b100: y4=in;
            3'b101: y5=in;
            3'b110: y6=in;
            3'b111: y7=in;
        endcase
    end
endmodule
