/*D flip flop module*/
module d_ff (
        /*
        define inputs and outputs 
        q is a "output reg" as its inside a 
        "always" block.
        */
        input clk,
        input d,
        output reg q,
        output q_wire
    );

    // Initial state
    initial begin
        q = 1'b0;
    end

    always @(posedge clk) begin
        q <= d;
    end

    // output; this uses a wire that is connected in top
    assign q_wire = ~q;

endmodule