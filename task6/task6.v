/*
    Problem:
    https://acm.sjtu.edu.cn/OnlineJudge/problem?problem_id=1617

    任务：学会使用状态机解决实际问题，完成能进行简单字符串匹配的状态机。
*/

module sequence_test(
    input wire clk,
    input wire rst,
    input wire data,
    output reg flag
);
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            flag <= 0;
        end
        else begin

            // TODO

        end
    end
    
    // TODO

endmodule
