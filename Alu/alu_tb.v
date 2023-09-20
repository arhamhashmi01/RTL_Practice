`timescale 1ns/1ps
module alu_tb();
    reg [7:0]a_itb;
    reg [7:0]b_itb;
    reg [2:0]op_itb;

    wire [7:0]res_otb;

    initial begin
        a_itb = 8'd50;
        b_itb = 8'd3;
        op_itb = 3'b000;
        #5;
        $display("res = %d" ,res_otb);
        #5;

        a_itb = 8'd50;
        b_itb = 8'd3;
        op_itb = 3'b001;
        #5;
        $display("res = %d" ,res_otb);
        #5;

        a_itb = 8'd50;
        b_itb = 8'd3;
        op_itb = 3'b010;
        #5;
        $display("res = %d" ,res_otb);
        #5;

        a_itb = 8'd50;
        b_itb = 8'd3;
        op_itb = 3'b011;
        #5;
        $display("res = %d" ,res_otb);
        #5;

        a_itb = 8'd50;
        b_itb = 8'd3;
        op_itb = 3'b100;
        #5;
        $display("res = %d" ,res_otb);
        #5;

        a_itb = 8'd50;
        b_itb = 8'd3;
        op_itb = 3'b101;
        #5;
        $display("res = %d" ,res_otb);
        #5;

        a_itb = 8'd50;
        b_itb = 8'd3;
        op_itb = 3'b111;
        #5;
        $display("res = %d" ,res_otb);  
    end
    alu u_alu0
    (
        .a_i(a_itb),
        .b_i(b_itb),
        .op_i(op_itb),
        .res_o(res_otb)
    );
    initial begin
       $dumpfile("alu.vcd");
       $dumpvars(0,alu_tb);
    end
endmodule