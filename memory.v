module harmonica_memory(
    input wire [12:0] address,
    input wire [2:0] swar_select,
    output reg [7:0] data_out
);
    reg [7:0] mem [0:55999];

    initial begin
        $readmemh("all_swars.hex", mem);
    end

    always @(*) begin
        case (swar_select)
            3'b000: data_out = mem[address];
            3'b001: data_out = mem[address + 8000];
            3'b010: data_out = mem[address + 16000];
            3'b011: data_out = mem[address + 24000];
            3'b100: data_out = mem[address + 32000];
            3'b101: data_out = mem[address + 40000];
            3'b110: data_out = mem[address + 48000];
            default: data_out = 8'b0;
        endcase
    end
endmodule
