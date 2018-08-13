`timescale 1ns / 1ps

module top(
    CLK100MHZ,
    sw,
    btn,
    led0_g,
    led0_r,
    led1_g,
    led1_r,
    led2_g,
    led2_r,
    led3_g,
    led3_r
);

parameter NB_COUNTER = 32;
parameter N_LEDS = 4;

input CLK100MHZ;
input [3:0] sw;
input [0:0] btn;
output wire led0_g;
output wire led0_r;
output wire led1_g;
output wire led1_r;
output wire led2_g;
output wire led2_r;
output wire led3_g;
output wire led3_r;

wire [1:0] sel;
wire enb;
wire rst;
wire clk;
wire colour;
wire [N_LEDS - 1 : 0] shift_reg;
reg [N_LEDS -1 : 0] led_r;
reg [N_LEDS -1 : 0] led_g;

assign clk = CLK100MHZ;
assign sel = sw[1:0];
assign enb = sw[2];
assign colour = sw[3];
assign rst = btn[0];


shift_reg#(
.N_LEDS(N_LEDS)
)

u_shift_reg(
.clk(clk),
.rst(rst),
.enb(enb),
.i_tick(o_tick),
.o_shift_reg(shift_reg)
);

counter#(
.NB_COUNTER(NB_COUNTER)
)

u_counter(
.clk(clk),
.rst(rst),
.enb(enb),
.i_sel(sel),
.o_tick(o_tick)
);

always@(colour,shift_reg) begin
    if(colour) begin
        led_r <= {N_LEDS-1{1'b0}};
        led_g <= shift_reg;
    end
    else begin
        led_g <= {N_LEDS-1{1'b0}};
        led_r <= shift_reg;
    end
end

assign {led3_r,led2_r,led1_r,led0_r} = led_r;
assign {led3_g,led2_g,led1_g,led0_g} = led_g;

endmodule
