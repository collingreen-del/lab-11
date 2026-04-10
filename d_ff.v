/*D flip flop module*/
module d_ff (

        
        input clk,
        input rst,
        input d,
        output reg q,
        output q_wire
    );

 
    

    always @(posedge clk or posedge rst) begin
    if(rst) 
    q <= 1'b0;
    else
        q <= d;
    end

    
    assign q_wire = ~q;

endmodule
