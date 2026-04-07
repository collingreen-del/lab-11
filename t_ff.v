/*T flip flop module*/
module t_ff (
        input clk,
        input t,
        output q,
        output q_wire
    );

    //internal wires
    wire d_local;
    wire q_local;
    wire q_wire_local;

    assign d_local = t ^ q_local;

    // Use D flip flop
    d_ff dff_inst (
        .clk(clk),
        .d(d_local),
        .q(q_local),
        .q_wire(q_wire_local)
    );

    assign q = q_local;
    assign q_wire = q_wire_local;

endmodule