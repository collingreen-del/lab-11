module Modulo_Counter(
    input clk,
    input rst,
    output [2:0] state,
    output out
);

wire q0, q1, q2;
wire d0, d1, d2;



assign d0 = ~q0;
assign d1 = q1 ^ q0;
assign d2 = q2 ^ (q1 & q0);



wire is_five;
assign is_five = q2 & ~q1 & q0;



wire nd0, nd1, nd2;

assign nd0 = is_five ? 1'b0 : d0;
assign nd1 = is_five ? 1'b0 : d1;
assign nd2 = is_five ? 1'b0 : d2;



DFF ff0(clk, rst, nd0, q0);
DFF ff1(clk, rst, nd1, q1);
DFF ff2(clk, rst, nd2, q2);

assign state = {q2,q1,q0};



wire out_q;
wire out_d;

assign out_d = is_five ^ out_q;

DFF ff_out(clk, rst, out_d, out_q);

assign out = out_q;

endmodule
