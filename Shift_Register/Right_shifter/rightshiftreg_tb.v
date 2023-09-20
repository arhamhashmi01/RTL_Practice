`timescale 1ns/1ps
module rightshiftreg_tb();
    reg clk_tb;
    reg rst_tb;
    reg a_tb;

    wire [3:0]out_tb;

    rightshiftreg u_rightshiftreg0
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
        a_tb = 1'b0;
    end

    initial begin
       $dumpfile("rightshiftreg.vcd");
       $dumpvars(0,rightshiftreg_tb);
    end

     always begin
        #2; clk_tb= ~clk_tb;
    end
endmodule