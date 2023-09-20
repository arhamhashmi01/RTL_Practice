`timescale 1ns/1ps
module leftshiftreg_tb();
    reg clk_tb;
    reg rst_tb;
    reg a_tb;

    wire [3:0]out_tb;

    leftshiftreg u_leftshiftreg0
    (
        .clk(clk_tb),
        .rst(rst_tb),
        .a(a_tb),
        .out(out_tb)
    );
    initial begin
        rst_tb = 0;
        clk_tb = 0;
        #2;
        rst_tb = 1;
        #2;
        rst_tb = 0;
        a_tb = 1'b1;
        #2;
        a_tb = 1'b1;
        #2;
        a_tb = 1'b0;
        #2;
    end
    initial begin
       $dumpfile("leftshiftreg.vcd");
       $dumpvars(0,leftshiftreg_tb);
    end
    always begin
        #2; clk_tb= ~clk_tb;
    end
endmodule