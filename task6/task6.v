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
  reg [2:0] state = 0;
    
  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      flag <= 0;
    end
    else begin
      if (state == 4) flag <= 1;
      else flag <= 0;
    end
    case (state)
      0: state <= (data ? 1 : 0);
      1: state <= (data ? 1 : 2);
      2: state <= (data ? 3 : 0);
      3: state <= (data ? 4 : 2);
      4: state <= (data ? 1 : 2);
    endcase
  end
endmodule
