`timescale 1ns/1ps
module mux_tb();
    reg  [7:0]a_tb;
    reg  [7:0]b_tb;
    reg  sel_tb;

    wire [7:0]out_tb;

    initial begin
        a_tb = 8'b00000001;
        b_tb = 8'b00000011;
        sel_tb = 1;
        #5;

        a_tb = 8'b00000001;
        b_tb = 8'b00000011;
        sel_tb = 0;
        #5;  
    end
    mux u_mux(
        .a(a_tb),
        .b(b_tb),
        .sel(sel_tb),
        .out(out_tb)
    );

    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0,mux_tb);
    end
endmodule