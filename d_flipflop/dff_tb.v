`timescale 1ns/1ps
module dff_tb ();

    reg clk;
    reg rst;
    reg in;
    wire norst_o;
    wire syncrst_o;
    wire asyncrst_o;

    dff u_dff0(
        .clk(clk),
        .rst(rst),
        .in(in),
        .norst_o( norst_o),
        .syncrst_o(syncrst_o),
        .asyncrst_o(asyncrst_o)
    );

    always begin
        #5;
        clk = ~clk;
    end

    initial begin
        clk= 1'b1;
        rst = 1'b1;
        in = 1'b0;
        #5;
        rst = 1'b0;
        in= 1'b1;
    end

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0,dff_tb);
    end
endmodule