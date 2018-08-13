`timescale 1ns / 1ps
module shift_reg(
    clk,
    rst,
    enb,
    i_tick,
    o_shift_reg
);

parameter N_LEDS = 4;

input clk;
input rst;
input enb;
input i_tick;
output wire [N_LEDS-1 : 0] o_shift_reg;

reg [N_LEDS-1 : 0] shift_reg;

always@(posedge clk) begin
    if(rst) begin
        shift_reg <= { {N_LEDS - 1 {1'b0}},1'b1};
    end
    else if(enb & i_tick) begin
        shift_reg <= {shift_reg[N_LEDS - 2 : 0],shift_reg[N_LEDS-1]};
    end
    else begin
        shift_reg <= shift_reg;
    end
end //always@(clk,rst)

assign o_shift_reg = shift_reg; 

endmodule
