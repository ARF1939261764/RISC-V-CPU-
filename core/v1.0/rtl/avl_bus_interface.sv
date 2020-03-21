interface i_avl_bus;
  logic[31:0] address;
  logic[3:0]  byte_en;
  logic       read;
  logic       write;
  logic[31:0] write_data;
  logic       begin_burst_transfer;
  logic[7:0]  burst_count;
  logic[31:0] read_data;
  logic       read_data_valid;
  modport master(
    output address,byte_en,read,write,write_data,begin_burst_transfer,burst_count,
    input  read_data,read_data_valid
  );
  modport slave(
    input  address,byte_en,read,write,write_data,begin_burst_transfer,burst_count,
    output read_data,read_data_valid
  );
endinterface

