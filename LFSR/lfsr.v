module lfsr (
    input     wire      clk,
    input     wire      reset,

    output    wire[3:0] lfsr_o
    );

    reg[3:0] lfsr_ff;
    wire  [3:0] nxt_lfsr;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            lfsr_ff <= 4'hE;
        end
        else begin
            lfsr_ff <= nxt_lfsr;
        end
    end

    assign nxt_lfsr = {lfsr_ff[2:0], lfsr_ff[1] ^ lfsr_ff[3]};

    assign lfsr_o = lfsr_ff;
endmodule