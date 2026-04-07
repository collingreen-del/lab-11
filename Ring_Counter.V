module ring_counter (
    input clk,
    input rst,
    output [2:0] state
);

    
    d_ff ff0 (
        .clk(clk),
        .d(state[2]), 
        .q(state[0])
    );

    d_ff ff1 (
        .clk(clk),
        .d(state[0]), 
        .q(state[1])
    );

    d_ff ff2 (
        .clk(clk),
        .d(state[1]), 
        .q(state[2])
    );

endmodule
