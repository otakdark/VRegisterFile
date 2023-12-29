module register_file(
    input wire clock,
    input wire reset,
    input wire [1:0] read_address_1, read_address_2,
    input wire write_enable,
    input wire [1:0] write_address,
    input wire [3:0] write_data,
    output reg [3:0] data_out_1, data_out_2
);

    reg [3:0] registers [1:0];

    always @(posedge clock) begin
        if (reset) begin
            registers[0] <= 0;
            registers[1] <= 0;
        end else begin
            if (write_enable) begin
                registers[write_address] <= write_data;
            end
        end
    end

    assign data_out_1 = registers[read_address_1];
    assign data_out_2 = registers[read_address_2];

endmodule
