`timescale 1ns / 1ps
module counter(
    clk,
    enb,
    rst,
    i_sel,
    o_tick
);

parameter NB_COUNTER = 32;

localparam R0 = 2**24;
localparam R1 = 2**25;
localparam R2 = 2**26;
localparam R3 = 2**27;
/*
localparam R0 = 2**4;
localparam R1 = 2**5;
localparam R2 = 2**6;
localparam R3 = 2**7;
*/
input clk;
input enb;
input rst;
input [1:0] i_sel;
output wire o_tick;

reg [NB_COUNTER - 1 : 0] counter;
reg [NB_COUNTER - 1 : 0] limit;

always@(i_sel) begin
    case(i_sel)
       2'b00: limit <= R0;
       2'b01: limit <= R1;
       2'b10: limit <= R2;
       2'b11: limit <= R3;
    endcase
end

always@(posedge clk) begin
    if(rst) begin
        counter <= {NB_COUNTER-1{1'b0}};
    end
    else if(enb) begin
        if(counter < limit) begin
            counter <= counter + 1;
        end
        else begin
            counter <= {NB_COUNTER-1{1'b0}}; 
        end
    end
    else begin
        counter <= counter;
    end
end

assign o_tick = (counter == limit)? 1'b1:1'b0;

endmodule