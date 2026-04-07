module modulo_counter(
    input clk,
    input rst,
    output [2:0] state,
    output out
);

wire q0, q1, q2;
wire d0, d1, d2;

/* increment logic (state + 1) */

assign d0 = ~q0;
assign d1 = q1 ^ q0;
assign d2 = q2 ^ (q1 & q0);

/* detect when state = 6 */

wire is_six;
assign is_six = q2 & q1 & ~q0;

/* reset next state when reaching 6 */

wire nd0, nd1, nd2;

assign nd0 = is_six ? 1'b0 : d0;
assign nd1 = is_six ? 1'b0 : d1;
assign nd2 = is_six ? 1'b0 : d2;

/* instantiate DFFs */

DFF ff0(clk, rst, nd0, q0);
DFF ff1(clk, rst, nd1, q1);
DFF ff2(clk, rst, nd2, q2);

assign state = {q2,q1,q0};

/* output divider */

wire out_q;
wire out_d;

assign out_d = is_six ^ out_q;

DFF ff_out(clk, rst, out_d, out_q);

assign out = out_q;

endmodule
