`timescale 1ns/1ps
module odd_counter_tb();
    reg clk;
    reg rst;
    wire [7:0] out;

    odd_counter counter(
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    initial begin 
        #10;
        clk=0;
        rst=1;

        #10;
        rst=1;

        #10;
        rst=0;

        #10;
        rst=0;

        #10;
        rst=0;

        #10;
        rst=0;

        #10;
        rst=0;

        #10;
        rst=0;
        $finish;
    end

    always begin 
        #5;
        clk = ~clk;
    end

    initial begin 
        $dumpfile("odd_counter.vcd");
        $dumpvars(0, odd_counter_tb);
    end
endmodule