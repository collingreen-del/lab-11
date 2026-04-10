module top (
    
    input btnC,      
    input btnU,      
    output [6:0] led
);
    wire mc_out;
    wire [2:0] mc_state;
    wire [2:0] rc_state;
    assign led[2:0] = rc_state;
    assign led [5:3] = mc_state;
    assign led[6] = mc_out;
    
    modulo_counter mc_inst (
        .clk(btnC),
        .rst(btnU),
        .state(mc_state),
        .out(mc_out)
    );

    
    ring_counter rc_inst (
        .clk(btnC),
        .rst(btnU),
        .state(rc_state)
    );

    
    


endmodule
