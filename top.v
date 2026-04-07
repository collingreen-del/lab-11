module top (
    input btnC,      
    input btnU,      
    output [15:0] led
);
    wire mc_out;
    wire [2:0] mc_state;
    wire [2:0] rc_state;

    // Behavioral Modulo Counter
    modulo_counter mc_inst (
        .clk(btnC),
        .rst(btnU),
        .state(mc_state),
        .out(mc_out)
    );

    // Structural Ring Counter
    ring_counter rc_inst (
        .clk(btnC),
        .rst(btnU),
        .state(rc_state)
    );

    
    assign led[6:0] = {mc_out, mc_state, rc_state};
    assign led[15:7] = 9'b0;

endmodule
