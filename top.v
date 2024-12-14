module harmonica_top(
    input wire clk,
    input wire play,
    input wire [2:0] swar_select,
    output wire pwm_out
);
    wire [7:0] sample_data;
    wire [12:0] sample_address;

    address_counter addr_cnt (
        .clk(clk),
        .play(play),
        .address(sample_address)
    );

    harmonica_memory mem (
        .address(sample_address),
        .swar_select(swar_select),
        .data_out(sample_data)
    );

    pwm_generator pwm (
        .clk(clk),
        .sample(sample_data),
        .pwm_out(pwm_out)
    );
endmodule
