`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2020 12:20:11 AM
// Design Name: 
// Module Name: I2S_Core_AXI
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Addresses:
//      0 : w : Control
//      1 : r : Status
//      2 : w : data_tx_left
//      3 : w : data_tx_right
//      4 : r : data_rx_left
//      5 : r : data_rx_right
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module I2S_Core_AXI
    #(
        parameter AXI_D_WIDTH = 32,
        parameter AXI_A_WIDTH = 32,
        parameter AXI_ID_WIDTH = 12,
        parameter MASTER_MODE = 1,
        parameter MCLK_HZ = 12288000,
        parameter SAMPLE_RATE_HZ = 48000,
        parameter TX_SAMPLE_WIDTH = 16,
        parameter RX_SAMPLE_WIDTH = 16,
        parameter PRE_PAD = 1,
        parameter POST_PAD = 0
    )
    (
        input wire clk,
        input wire rst,
        input wire mclk,

        //=====================================================================
        // I2S Interface and Audio Control
        
        output wire audio_mclk,

        input wire bclk_i,      // ignored if MASTER_MODE == 1
        output wire bclk_o,     // ignored if MASTER_MODE == 0

        // I2S signals for the Transmitter
        output wire i2s_tx_dat,
        input wire i2s_tx_lrc_i,    // ignored if MASTER_MODE == 1
        output wire i2s_tx_lrc_o,   // ignored if MASTER_MODE == 0

        // I2S signals for the Receiver
        input wire i2s_rx_dat,
        input wire i2s_rx_lrc_i,    // ignored if MASTER_MODE == 1
        output wire i2s_rx_lrc_o,   // ignored if MASTER_MODE == 0


        output wire interrupt,

        //=====================================================================
        // AXI Write Address Channel
        input wire [AXI_ID_WIDTH - 1 : 0]       S_AXI4_AWID,
        input wire [AXI_A_WIDTH - 1 : 0]        S_AXI4_AWADDR,
        //input wire [7 : 0]                      S_AXI4_AWLEN,
        //input wire [2 : 0]                      S_AXI4_AWSIZE,
        //input wire [1 : 0]                      S_AXI4_AWBURST,
        //input wire                              S_AXI4_AWLOCK,
        //input wire [3 : 0]                      S_AXI4_AWCACHE,
        input wire [2 : 0]                      S_AXI4_AWPROT,
        //input wire [3 : 0]                      S_AXI4_AWQOS,
        //input wire [3 : 0]                      S_AXI4_AWREGION,
        //input wire                              S_AXI4_AWUSER,
        input wire                              S_AXI4_AWVALID,
        output wire                             S_AXI4_AWREADY,

        //=====================================================================
        // AXI Write Data Channel
        input wire [AXI_ID_WIDTH - 1 : 0]       S_AXI4_WID,
        input wire [AXI_D_WIDTH - 1 : 0]        S_AXI4_WDATA,
        input wire [(AXI_D_WIDTH / 8) - 1 : 0]  S_AXI4_WSTRB,
        //input wire                              S_AXI4_WLAST,
        //input wire                              S_AXI4_WUSER,
        input wire                              S_AXI4_WVALID,
        output wire                             S_AXI4_WREADY,

        //=====================================================================
        // AXI Write Response Channel
        output wire [AXI_ID_WIDTH - 1 : 0]      S_AXI4_BID,
        output wire [1 : 0]                     S_AXI4_BRESP,
        //output wire                             S_AXI4_BUSER,
        output wire                             S_AXI4_BVALID,
        input wire                              S_AXI4_BREADY,

        //=====================================================================
        // AXI Read Address Channel
        input wire [AXI_ID_WIDTH - 1 : 0]       S_AXI4_ARID,
        input wire [AXI_A_WIDTH - 1 : 0]        S_AXI4_ARADDR,
        //input wire [7 : 0]                      S_AXI4_ARLEN,
        //input wire [2 : 0]                      S_AXI4_ARSIZE,
        //input wire [1 : 0]                      S_AXI4_ARBURST,
        //input wire                              S_AXI4_ARLOCk,
        //input wire [3 : 0]                      S_AXI4_ARCACHE,
        input wire [2 : 0]                      S_AXI4_ARPROT,
        //input wire [3 : 0]                      S_AXI4_ARQOS,
        //input wire [3 : 0]                      S_AXI4_ARREGION,
        //input wire                              S_AXI4_ARUSER,
        input wire                              S_AXI4_ARVALID,
        output wire                             S_AXI4_ARREADY,

        //=====================================================================
        // AXI Read Data Channel
        output wire [AXI_ID_WIDTH - 1 : 0]      S_AXI4_RID,
        output wire [AXI_D_WIDTH - 1 : 0]       S_AXI4_RDATA,
        output wire [1 : 0]                     S_AXI4_RRESP,
        //output wire                             S_AXI4_RLAST,
        //output wire                             S_AXI4_RUSER,
        output wire                             S_AXI4_RVALID,
        input wire                              S_AXI4_RREADY
    );


    //wire bclk_i;
    //wire bclk_o;
    //wire i2s_tx_dat;
    //wire i2s_tx_lrc_i;
    //wire i2s_tx_lrc_o;
    //wire i2s_rx_dat;
    //wire i2s_rx_lrc_i;
    //wire i2s_rx_lrc_o;

    assign audio_mclk = mclk;

    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_left = 0;
    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_right = 0;
    wire data_tx_left_rdy_pulse;
    wire data_tx_right_rdy_pulse;

    wire [RX_SAMPLE_WIDTH - 1 : 0] data_rx_left;
    wire [RX_SAMPLE_WIDTH - 1 : 0] data_rx_right;
    wire data_rx_left_rdy_pulse;
    wire data_rx_right_rdy_pulse;

    I2S_Transceiver #(
        .MASTER_MODE(MASTER_MODE),
        .MCLK_HZ(MCLK_HZ),
        .SAMPLE_RATE_HZ(SAMPLE_RATE_HZ),
        .TX_SAMPLE_WIDTH(TX_SAMPLE_WIDTH),
        .RX_SAMPLE_WIDTH(RX_SAMPLE_WIDTH),
        .PRE_PAD(PRE_PAD),
        .POST_PAD(POST_PAD)
    )
    I2S_TRX(
        .clk(clk),
        .rst(rst),

        .mclk(mclk),
        .bclk_i(bclk_i),                // ignored if MASTER_MODE = 1
        .bclk_o(bclk_o),                // ignored if MASTER_MODE = 0

        // external I2S signals for the Transmitter
        .i2s_tx_dat(i2s_tx_dat),
        .i2s_tx_lrc_i(i2s_tx_lrc_i),    // ignored if MASTER_MODE = 1
        .i2s_tx_lrc_o(i2s_tx_lrc_o),    // ignored if MASTER_MODE = 0

        // external I2S signals for the Receiver
        .i2s_rx_dat(i2s_rx_dat),
        .i2s_rx_lrc_i(i2s_rx_lrc_i),    // ignored if MASTER_MODE = 1
        .i2s_rx_lrc_o(i2s_rx_lrc_o),    // ignored if MASTER_MODE = 0

        // internal connections for the Transmitter
        .data_tx_left(data_tx_left),
        .data_tx_right(data_tx_right),
        .data_tx_left_rdy_pulse(data_tx_left_rdy_pulse),
        .data_tx_right_rdy_pulse(data_tx_right_rdy_pulse),

        // internal connections for the Receiver
        .data_rx_left(data_rx_left),
        .data_rx_right(data_rx_right),
        .data_rx_left_rdy_pulse(data_rx_left_rdy_pulse),
        .data_rx_right_rdy_pulse(data_rx_right_rdy_pulse)
    );


    reg [7 : 0] control_reg = 0;
    reg [7 : 0] status_reg = 0;
    wire [3 : 0] interrupts;
    
    assign interrupts[0] = status_reg[4];   //data_tx_left
    assign interrupts[1] = status_reg[5];   //data_tx_right
    assign interrupts[2] = status_reg[6];   //data_rx_left
    assign interrupts[3] = status_reg[7];   //data_rx_right

    assign interrupt = interrupts[0] | interrupts[1] | interrupts[2] | interrupts[3];

    localparam CTRL_REG_ADR = 4'h0;
    localparam STAT_REG_ADR = 4'h1;
    localparam DTXL_REG_ADR = 4'h2;
    localparam DTXR_REG_ADR = 4'h3;
    localparam DRXL_REG_ADR = 4'h4;
    localparam DRXR_REG_ADR = 4'h5;


    // XX_IID are used as an internal 1 depth transaction ID buffer
    // This is to ensure proper operation between channels with AXI LITE (otherwise XXID would be used)
    reg AW_IID = 0, W_IID = 0, B_IID = 0, AR_IID = 0, R_IID = 0;



    //=========================================================================
    //  AXI Write Address Logic
    //=========================================================================

    reg [AXI_ID_WIDTH - 1 : 0]  AWID_reg;
    reg [3 : 0]                 AWADDR_reg = 0;
    reg [2 : 0]                 AWPROT_reg = 0;
    reg                         AWVALID_reg = 0;
    reg                         AWREADY_reg = 0;

    assign S_AXI4_AWREADY = AWREADY_reg;

    always @(posedge clk) begin : p_AXI_Write_Address
        if(rst == 1) begin
            AWREADY_reg <= 0;
            AW_IID <= 0;
        end
        else begin
            
            AWVALID_reg <= S_AXI4_AWVALID;
            
            if(AWREADY_reg == 1 && S_AXI4_AWVALID == 1) begin
                AWID_reg        <= S_AXI4_AWID;
                AWADDR_reg      <= S_AXI4_AWADDR[3:0];
                AWPROT_reg      <= S_AXI4_AWPROT;
                AW_IID          <= ~AW_IID;
                AWREADY_reg     <= 0;
            end
            else if(AW_IID == B_IID) begin
                // received address, wait for write response to confirm
                AWREADY_reg <= 1;
            end

            //if(AW_IID == B_IID) begin
            //    // received address, wait for response confirm
            //    AWREADY_reg <= 1;
            //end
            //else begin
            //    AWREADY_reg <= 0;
            //end
            
        end
    end

    //=========================================================================
    //  AXI Write Data Logic
    //=========================================================================

    reg [AXI_ID_WIDTH - 1 : 0]      WID_reg;
    reg [AXI_D_WIDTH - 1 : 0]       WDATA_reg = 0;
    reg [(AXI_D_WIDTH / 8) - 1 : 0] WSTRB_reg = 0;
    reg                             WVALID_reg = 0;
    reg                             WREADY_reg = 0;

    assign S_AXI4_WREADY = WREADY_reg;

    always @(posedge clk) begin : p_AXI_Write_Data
        if(rst == 1) begin
            WREADY_reg <= 0;
            W_IID <= 0;
        end
        else begin
            
            WVALID_reg <= S_AXI4_WVALID;
            
            if(WREADY_reg == 1 && S_AXI4_WVALID == 1) begin
                WID_reg     <= S_AXI4_WID;
                WDATA_reg   <= S_AXI4_WDATA;
                WSTRB_reg   <= S_AXI4_WSTRB;
                W_IID       <= ~W_IID;
                WREADY_reg  <= 0;
            end
            else if(W_IID == B_IID) begin
                // received data, wait for response confirm
                WREADY_reg <= 1;
            end

            //if(W_IID == B_IID) begin
            //    // received data, wait for response confirm
            //    WREADY_reg <= 1;
            //end
            //else begin
            //    WREADY_reg <= 0;
            //end
            
        end
    end

    //=========================================================================
    //  AXI Write Response Logic
    //=========================================================================

    reg [AXI_ID_WIDTH - 1 : 0]  BID_reg;
    reg [1 : 0]                 BRESP_reg = 0;
    reg                         BVALID_reg = 0;
    reg                         BREADY_reg = 0;

    //assign S_AXI4_BID       = BID_reg;
    assign S_AXI4_BRESP     = BRESP_reg;
    assign S_AXI4_BVALID    = BVALID_reg;

    always @(posedge clk) begin : p_AXI_Write_Response
        if(rst == 1) begin
            BVALID_reg <= 0;
            B_IID <= 0;
        end
        else begin

            BREADY_reg <= S_AXI4_BREADY;

            if((AW_IID == W_IID) && (B_IID != AW_IID)) begin
                // If both Write Addr and Data are complete, but Resp is not updated, send response
                BVALID_reg <= 1;

                BID_reg <= AWID_reg;
                BRESP_reg <= 2'b00;     // OKAY
                //BRESP_reg <= 2'b01;     // EXOKAY
                //BRESP_reg <= 2'b10;     // SLVERR
                //BRESP_reg <= 2'b11;     // DECERR
                B_IID <= ~B_IID;

                // Write to register would also occur under this logic state
            end
            else if(BVALID_reg == 1 && BREADY_reg == 1) begin
                BVALID_reg <= 0;
            end
        end
    end

    //=========================================================================
    //  AXI Read Address Logic
    //=========================================================================

    reg [AXI_ID_WIDTH - 1 : 0]  ARID_reg;
    reg [3 : 0]                 ARADDR_reg = 0;
    reg [2 : 0]                 ARPROT_reg = 0;
    reg                         ARVALID_reg = 0;
    reg                         ARREADY_reg = 0;

    assign S_AXI4_ARREADY = ARREADY_reg;

    always @(posedge clk) begin : p_AXI_Read_Address
        if(rst == 1) begin
            ARREADY_reg <= 0;
            AR_IID <= 0;
        end
        else begin
            
            ARVALID_reg <= S_AXI4_ARVALID;
            
            if(ARREADY_reg == 1 && S_AXI4_ARVALID == 1) begin
                ARID_reg        <= S_AXI4_ARID;
                ARADDR_reg      <= S_AXI4_ARADDR[3:0];
                ARPROT_reg      <= S_AXI4_ARPROT;
                AR_IID          <= ~AR_IID;
                ARREADY_reg     <= 0;
            end
            else if(AR_IID == R_IID) begin
                // received address, wait for data channel to catch up
                ARREADY_reg <= 1;
            end

            //if(AR_IID == R_IID) begin
            //    ARREADY_reg <= 1;
            //end
            //else begin
            //    ARREADY_reg <= 0;
            //end
            
        end
    end

    //=========================================================================
    //  AXI Read Data Logic
    //=========================================================================

    reg [AXI_ID_WIDTH - 1 : 0]  RID_reg;
    reg [AXI_D_WIDTH - 1 : 0]   RDATA_reg = 0;
    reg [1 : 0]                 RRESP_reg = 0;
    reg                         RVALID_reg = 0;
    reg                         RREADY_reg = 0;

    assign S_AXI4_RID       = RID_reg;
    assign S_AXI4_RDATA     = RDATA_reg;
    assign S_AXI4_RRESP     = RRESP_reg;
    assign S_AXI4_RVALID    = RVALID_reg;

    always @(posedge clk) begin : p_AXI_Read_Data
        if(rst == 1) begin
            RVALID_reg <= 0;
            R_IID <= 0;
        end
        else begin
            
            RREADY_reg <= S_AXI4_RREADY;

            if(AR_IID != R_IID) begin
                RVALID_reg <= 1;
                RID_reg <= ARID_reg;
                R_IID <= AR_IID;

                RRESP_reg <= 2'b00;     // OKAY
                //RRESP_reg <= 2'b01;     // EXOKAY
                //RRESP_reg <= 2'b10;     // SLVERR
                //RRESP_reg <= 2'b11;     // DECERR

                case (ARADDR_reg[3:0])
                    CTRL_REG_ADR    : RDATA_reg <= control_reg;
                    STAT_REG_ADR    : RDATA_reg <= status_reg;
                    DTXL_REG_ADR    : RDATA_reg <= data_tx_left;
                    DTXR_REG_ADR    : RDATA_reg <= data_tx_right;
                    DRXL_REG_ADR    : RDATA_reg <= data_rx_left;
                    DRXR_REG_ADR    : RDATA_reg <= data_rx_right;
                    default         : RDATA_reg <= 0;
                endcase
            end
            else if(S_AXI4_RREADY == 1 && RVALID_reg == 1) begin
                RVALID_reg <= 0;
            end
            
        end
    end

    //=========================================================================
    //=========================================================================
    //
    //  AXI Register Stuff
    //
    //=========================================================================


    //=========================================================================
    // Control Register
    //  0  : Enable == 1 (default 1)
    //  1  : Mute == 1 (default 0)
    //  2  : Unused
    // 3-7 : Unused
    //=========================================================================
    always @(posedge clk) begin : p_AXI_control_register
        if(rst == 1) begin
            control_reg <= 8'b0000_0001;
        end
        else begin
            if(AW_IID == W_IID && B_IID != AW_IID && AWADDR_reg == CTRL_REG_ADR) begin
                control_reg <= WDATA_reg[7:0];
            end
        end
    end


    //=========================================================================
    // Status Register
    //  0  : Enable == 1 (default 1)
    //  1  : Mute == 1 (default 0)
    // 2-3 : Unused
    //  4  : Data TX Left interrupt high (indicates data read into I2C transmitter)
    //  5  : Data TX Right interrupt high (indicates data read into I2C transmitter)
    //  6  : Data RX Left interrupt high (indicates new data read from I2S receiver)
    //  7  : Data RX Right interrupt high (indicates new data read from I2S receiver)
    //=========================================================================
    
    reg tx_left_updt_pulse = 0;
    reg tx_right_updt_pulse = 0;
    reg rx_left_updt_pulse = 0;
    reg rx_right_updt_pulse = 0;

    always @(posedge clk) begin : p_AXI_status_register
        
        reg txl_rdy_reg, txr_rdy_reg, rxl_rdy_reg, rxr_rdy_reg;
        

        if(rst == 1) begin
            status_reg <= 8'b0000_0000;
            txl_rdy_reg <= 0;
            txr_rdy_reg <= 0;
            rxl_rdy_reg <= 0;
            rxr_rdy_reg <= 0;
        end
        else begin
            if(AW_IID == W_IID && B_IID != AW_IID && AWADDR_reg == STAT_REG_ADR) begin
                
            end
            else begin
            
            end

            status_reg[0] <= control_reg[0];
            status_reg[1] <= control_reg[1];
            status_reg[2] <= 0;
            status_reg[3] <= 0;

            

            txl_rdy_reg <= data_tx_left_rdy_pulse;
            txr_rdy_reg <= data_tx_right_rdy_pulse;
            rxl_rdy_reg <= data_rx_left_rdy_pulse;
            rxr_rdy_reg <= data_rx_right_rdy_pulse;
            
            if(txl_rdy_reg == 0 && data_tx_left_rdy_pulse == 1) begin
                status_reg[4] <= 1;
            end
            else if(tx_left_updt_pulse == 1) begin
                status_reg[4] <= 0;
            end

            if(txr_rdy_reg == 0 && data_tx_right_rdy_pulse == 1) begin
                status_reg[5] <= 1;
            end
            else if(tx_right_updt_pulse == 1) begin
                status_reg[5] <= 0;
            end

            if(rxl_rdy_reg == 0 && data_rx_left_rdy_pulse == 1) begin
                status_reg[6] <= 1;
            end
            else if(rx_left_updt_pulse == 1) begin
                status_reg[6] <= 0;
            end

            if(rxr_rdy_reg == 0 && data_rx_right_rdy_pulse == 1) begin
                status_reg[7] <= 1;
            end
            else if(rx_right_updt_pulse == 1) begin
                status_reg[7] <= 0;
            end
        end
    end

    //=========================================================================
    // Data Transmit Left Register
    //  0-(TX_SAMPLE_WIDTH-1) : Sample Data
    //=========================================================================
    always @(posedge clk) begin : p_AXI_data_tx_left_register
        if(rst == 1) begin
            data_tx_left <= 0;
            tx_left_updt_pulse <= 0;
        end
        else begin
            if(AW_IID == W_IID && B_IID != AW_IID && AWADDR_reg == DTXL_REG_ADR) begin
                // Data has been written, send pulse for status
                data_tx_left <= WDATA_reg[TX_SAMPLE_WIDTH - 1 : 0];
                tx_left_updt_pulse <= 1;
            end
            else begin
                tx_left_updt_pulse <= 0;
            end
        end
    end

    //=========================================================================
    // Data Transmit Right Register
    //  0-(TX_SAMPLE_WIDTH-1) : Sample Data
    //=========================================================================
    always @(posedge clk) begin : p_AXI_data_tx_right_register
        if(rst == 1) begin
            data_tx_right <= 0;
            tx_right_updt_pulse <= 0;
        end
        else begin
            if(AW_IID == W_IID && B_IID != AW_IID && AWADDR_reg == DTXR_REG_ADR) begin
                // Data has been written, send pulse for status
                data_tx_right <= WDATA_reg[TX_SAMPLE_WIDTH - 1 : 0];
                tx_right_updt_pulse <= 1;
            end
            else begin
                tx_right_updt_pulse <= 0;
            end
        end
    end

    //=========================================================================
    // Data Receive Left Register
    //  0-(RX_SAMPLE_WIDTH-1) : Sample Data
    //=========================================================================
    always @(posedge clk) begin : p_AXI_rx_left_register
        if(rst == 1) begin
            rx_left_updt_pulse <= 0;
        end
        else begin
            if(AR_IID != R_IID && ARADDR_reg == DRXL_REG_ADR) begin
                // Data has been read, send pulse for status
                rx_left_updt_pulse <= 1;
            end
            else begin
                rx_left_updt_pulse <= 0;
            end
        end
    end

    //=========================================================================
    // Data Receive Right Register
    //  0-(RX_SAMPLE_WIDTH-1) : Sample Data
    //=========================================================================
    always @(posedge clk) begin : p_AXI_rx_right_register
        if(rst == 1) begin
            rx_right_updt_pulse <= 0;
        end
        else begin
            if(AR_IID != R_IID && ARADDR_reg == DRXR_REG_ADR) begin
                // Data has been read, send pulse for status
                rx_right_updt_pulse <= 1;
            end
            else begin
                rx_right_updt_pulse <= 0;
            end
        end
    end



endmodule
