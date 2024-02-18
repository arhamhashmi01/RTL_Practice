module dff_ram_4x72 (
    input wire clk,
    input wire en,
    input wire wr_n,
    input wire [1:0] address ,
    input wire [71:0]wdata,

    output reg [71:0]rdata
);
    reg [71:0] mem [3:0];

    always @(posedge clk) begin
        if(!en) begin
            if(!wr_n)begin
                mem[address] <= wdata;
            end
            else if(wr_n) begin
                rdata <= mem[address];
            end
        end
end

endmodule
