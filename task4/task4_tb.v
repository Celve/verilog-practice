/*
    ans:
    00000000000000000000000000000011
*/

`include "task4.v"

module top_module();
    reg     [31:0]      in0;
    reg     [31:0]      in1;
    wire    [31:0]      sum;

    initial begin
        assign in0 = 4'b1000;
        assign in1 = 4'b0011;
    end

    Add a(
        .a          (in0),
        .b          (in1),
        .sum        (sum)
    );

    always @(*) begin
        $display("%b", sum);
    end
endmodule