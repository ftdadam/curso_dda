`timescale 1ns / 1ps

module tb_top(
);

parameter N_LEDS = 4;
parameter NB_COUNTER = 32;

reg CLK100MHZ;
reg [3:0] sw;
reg [0:0] btn;
wire led0_g;
wire led0_r;
wire led1_g;
wire led1_r;
wire led2_g;
wire led2_r;
wire led3_g;
wire led3_r;

top#(
.N_LEDS(N_LEDS),
.NB_COUNTER(NB_COUNTER)
)
u_top(
.CLK100MHZ(CLK100MHZ),
.sw(sw),
.btn(btn),
.led0_g(led0_g),
.led0_r(led0_r),
.led1_g(led1_g),
.led1_r(led1_r),
.led2_g(led2_g),
.led2_r(led2_r),
.led3_g(led3_g),
.led3_r(led3_r)
);

initial begin
    CLK100MHZ = 1'b0;
    sw = 4'b0000;
    btn = 1'b1;
    #20
    btn = 1'b0;
    #20
    sw = 4'b1100;
end

always #5 CLK100MHZ = ~CLK100MHZ;

endmodule
