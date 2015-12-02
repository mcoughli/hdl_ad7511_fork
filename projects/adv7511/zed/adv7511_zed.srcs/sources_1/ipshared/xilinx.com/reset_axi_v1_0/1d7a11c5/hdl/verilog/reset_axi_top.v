// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module reset_axi_top (
aclk,
aresetn,
s_axi_AXI4LiteS_AWADDR,
s_axi_AXI4LiteS_AWVALID,
s_axi_AXI4LiteS_AWREADY,
s_axi_AXI4LiteS_WDATA,
s_axi_AXI4LiteS_WSTRB,
s_axi_AXI4LiteS_WVALID,
s_axi_AXI4LiteS_WREADY,
s_axi_AXI4LiteS_BRESP,
s_axi_AXI4LiteS_BVALID,
s_axi_AXI4LiteS_BREADY,
s_axi_AXI4LiteS_ARADDR,
s_axi_AXI4LiteS_ARVALID,
s_axi_AXI4LiteS_ARREADY,
s_axi_AXI4LiteS_RDATA,
s_axi_AXI4LiteS_RRESP,
s_axi_AXI4LiteS_RVALID,
s_axi_AXI4LiteS_RREADY,
reset_out,
reset_out_ap_vld,
ap_start,
ap_ready,
ap_done,
ap_idle
);

parameter C_S_AXI_AXI4LITES_ADDR_WIDTH = 5;
parameter C_S_AXI_AXI4LITES_DATA_WIDTH = 32;
input aclk ;
input aresetn ;

input [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_AWADDR ;
input s_axi_AXI4LiteS_AWVALID ;
output s_axi_AXI4LiteS_AWREADY ;
input [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_WDATA ;
input [C_S_AXI_AXI4LITES_DATA_WIDTH/8 - 1:0] s_axi_AXI4LiteS_WSTRB ;
input s_axi_AXI4LiteS_WVALID ;
output s_axi_AXI4LiteS_WREADY ;
output [2 - 1:0] s_axi_AXI4LiteS_BRESP ;
output s_axi_AXI4LiteS_BVALID ;
input s_axi_AXI4LiteS_BREADY ;
input [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_ARADDR ;
input s_axi_AXI4LiteS_ARVALID ;
output s_axi_AXI4LiteS_ARREADY ;
output [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_RDATA ;
output [2 - 1:0] s_axi_AXI4LiteS_RRESP ;
output s_axi_AXI4LiteS_RVALID ;
input s_axi_AXI4LiteS_RREADY ;

output reset_out ;
output reset_out_ap_vld ;
input ap_start ;
output ap_ready ;
output ap_done ;
output ap_idle ;

wire aclk;
wire aresetn;

wire [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_AWADDR;
wire s_axi_AXI4LiteS_AWVALID;
wire s_axi_AXI4LiteS_AWREADY;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_WDATA;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH/8 - 1:0] s_axi_AXI4LiteS_WSTRB;
wire s_axi_AXI4LiteS_WVALID;
wire s_axi_AXI4LiteS_WREADY;
wire [2 - 1:0] s_axi_AXI4LiteS_BRESP;
wire s_axi_AXI4LiteS_BVALID;
wire s_axi_AXI4LiteS_BREADY;
wire [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_ARADDR;
wire s_axi_AXI4LiteS_ARVALID;
wire s_axi_AXI4LiteS_ARREADY;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_RDATA;
wire [2 - 1:0] s_axi_AXI4LiteS_RRESP;
wire s_axi_AXI4LiteS_RVALID;
wire s_axi_AXI4LiteS_RREADY;


wire [32 - 1:0] sig_reset_axi_in_reset;



reset_axi reset_axi_U(
    .in_reset(sig_reset_axi_in_reset),
    .reset_out(reset_out),
    .reset_out_ap_vld(reset_out_ap_vld),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

reset_axi_AXI4LiteS_if #(
    .C_ADDR_WIDTH(C_S_AXI_AXI4LITES_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_AXI4LITES_DATA_WIDTH))
reset_axi_AXI4LiteS_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .I_in_reset(sig_reset_axi_in_reset),
    .AWADDR(s_axi_AXI4LiteS_AWADDR),
    .AWVALID(s_axi_AXI4LiteS_AWVALID),
    .AWREADY(s_axi_AXI4LiteS_AWREADY),
    .WDATA(s_axi_AXI4LiteS_WDATA),
    .WSTRB(s_axi_AXI4LiteS_WSTRB),
    .WVALID(s_axi_AXI4LiteS_WVALID),
    .WREADY(s_axi_AXI4LiteS_WREADY),
    .BRESP(s_axi_AXI4LiteS_BRESP),
    .BVALID(s_axi_AXI4LiteS_BVALID),
    .BREADY(s_axi_AXI4LiteS_BREADY),
    .ARADDR(s_axi_AXI4LiteS_ARADDR),
    .ARVALID(s_axi_AXI4LiteS_ARVALID),
    .ARREADY(s_axi_AXI4LiteS_ARREADY),
    .RDATA(s_axi_AXI4LiteS_RDATA),
    .RRESP(s_axi_AXI4LiteS_RRESP),
    .RVALID(s_axi_AXI4LiteS_RVALID),
    .RREADY(s_axi_AXI4LiteS_RREADY));

endmodule
