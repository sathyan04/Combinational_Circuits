`timescale 1ns / 1ps

module mux_2x1(a,b,sel,y);
    input a,b,sel;
    output y;
    assign y = (sel)?b:a;
endmodule