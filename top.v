module swar_generator (
    input wire clk,
    input wire rst,
    input wire [3:0] note,
    output wire pwm_out
);

    wire [31:0] div_value;
    wire clk_div;

    note_selector ns (
        .note(note),
        .div_value(div_value)
    );

    clock_divider cd (
        .clk(clk),
        .rst(rst),
        .div_value(div_value),
        .clk_out(clk_div)
    );

    pwm_generator pwm (
        .clk(clk_div),
        .rst(rst),
        .pwm_out(pwm_out)
    );

endmodule
