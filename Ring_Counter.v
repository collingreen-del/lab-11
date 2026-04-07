module Ring_Counter (
    input clk,
    input rst,
    output [2:0] state
);

wire [2:0] t_input;
wire w0, w1, w2;



assign t_input[0] = state[2] ^ state[0];
assign t_input[1] = state[0] ^ state[1];
assign t_input[2] = state[1] ^ state[2];

/* T flip flops */

t_ff stage0 (
    .clk(clk),
    .t(t_input[0]),
    .q(state[0]),
    .q_wire(w0)
);

t_ff stage1 (
    .clk(clk),
    .t(t_input[1]),
    .q(state[1]),
    .q_wire(w1)
);

t_ff stage2 (
    .clk(clk),
    .t(t_input[2]),
    .q(state[2]),
    .q_wire(w2)
);

endmodule
