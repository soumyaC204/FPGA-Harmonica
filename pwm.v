module pwm_generator (
    input wire clk,
    input wire rst,
    output reg pwm_out
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pwm_out <= 0;
        end else begin
            pwm_out <= ~pwm_out;
        end
    end

endmodule
