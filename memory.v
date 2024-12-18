module note_selector (
    input wire [3:0] note,
    output reg [31:0] div_value
);

    parameter CLK_FREQ = 100_000_000;
    parameter FREQ_C = 261;
    parameter FREQ_D = 294;
    parameter FREQ_E = 329;
    parameter FREQ_F = 349;
    parameter FREQ_G = 392;
    parameter FREQ_A = 440;
    parameter FREQ_B = 493;

    localparam CNT_C = CLK_FREQ / (2 * FREQ_C);
    localparam CNT_D = CLK_FREQ / (2 * FREQ_D);
    localparam CNT_E = CLK_FREQ / (2 * FREQ_E);
    localparam CNT_F = CLK_FREQ / (2 * FREQ_F);
    localparam CNT_G = CLK_FREQ / (2 * FREQ_G);
    localparam CNT_A = CLK_FREQ / (2 * FREQ_A);
    localparam CNT_B = CLK_FREQ / (2 * FREQ_B);

    always @(*) begin
        case (note)
            4'b0000: div_value = CNT_C;
            4'b0001: div_value = CNT_D;
            4'b0010: div_value = CNT_E;
            4'b0011: div_value = CNT_F;
            4'b0100: div_value = CNT_G;
            4'b0101: div_value = CNT_A;
            4'b0110: div_value = CNT_B;
            default: div_value = CNT_C;
        endcase
    end

endmodule
