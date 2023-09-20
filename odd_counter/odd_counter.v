module odd_counter(clk,rst,out);
    input wire clk;
    input wire rst;
    output reg[7:0] out;

    always @(posedge clk or posedge rst)
    begin 
        if (rst) begin 
            out<=8'h1;
        end
        else begin 
            out<= out + 8'h2;
        end
    end 
endmodule