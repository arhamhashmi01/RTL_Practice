module dff (clk,rst,in,norst_o,syncrst_o,asyncrst_o);
    input  wire clk;
    input  wire rst;
    input  wire in;
    output reg norst_o;
    output reg syncrst_o;
    output reg asyncrst_o;

    // No reset
    always @(posedge clk)begin
      norst_o <= in;
    end

    // Sync reset
    always @(posedge clk)begin
        if (rst) begin
            syncrst_o <= 1'b0;
        end
        else begin
            syncrst_o <=in;
        end
    end

    // Async reset
    always @(posedge clk or posedge rst)begin
        if (rst) begin
            asyncrst_o <= 1'b0;
        end
        else begin
            asyncrst_o <= in;
        end
    end
endmodule