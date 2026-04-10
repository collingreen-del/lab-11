module Ripple_Counter (
    input clk,
    input rst,
    output [2:0] state





t_ff t0 (
    .clk(clk),
    .rst(rst),
    .t(1'b1),
    .q(state[0])
   
);

t_ff t1 (
    .clk(state[0]),
    .rst(rst),
    .t(1'b1),
    .q(state[1])
    
);

t_ff t2 (
    .clk(state[1]),
    .rst(rst),
    .t(1'b1),
    .q(state[2])
    
);

endmodule


endmodule
