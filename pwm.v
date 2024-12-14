module pwm_generator(
    input wire clk,
    input wire [7:0] sample,
    output reg pwm_out
);
    reg [7:0] pwm_counter;

    always @(posedge clk) begin
        pwm_counter <= pwm_counter + 1;
        pwm_out <= (pwm_counter < sample) ? 1 : 0;
    end
endmodule
