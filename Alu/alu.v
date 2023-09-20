module alu (a_i,b_i,op_i,res_o);

    input wire [7:0]a_i;
    input wire [7:0]b_i;
    input wire [2:0]op_i;

    output reg [7:0]res_o;

    always @(*) begin

        if (op_i==3'b000) begin
            res_o = a_i + b_i; //add
        end
        else if (op_i==3'b001) begin
            res_o = a_i - b_i; //sub
        end
        else if (op_i==3'b010) begin
            res_o = a_i & b_i; //and
        end
        else if (op_i==3'b011) begin
            res_o = a_i | b_i; //or
        end
        else if (op_i==3'b100) begin
            res_o = a_i ^ b_i; //xor
        end
        else if (op_i==3'b101) begin
            res_o = a_i >> b_i; //shiftright
        end
        else begin
            res_o = a_i << b_i; //shiftleft
        end
    end
endmodule