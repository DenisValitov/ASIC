`timescale 1 ns / 1 ns

module filter
          (clk,
           reset,
           clk_enable,
           input_rsvd,
           output_rsvd);


  input   clk;
  input   reset;
  input   clk_enable;
  input   signed [9:0] input_rsvd;  // sfix10_En3
  output  signed [9:0] output_rsvd;  // sfix10_En3


  wire enb;
  reg signed [9:0] BodyDelay2_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay3_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay4_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay5_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay6_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay7_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay8_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay9_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay10_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay11_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay12_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay13_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay14_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay15_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay16_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay17_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay18_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay19_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay20_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay21_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay22_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay23_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay24_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay25_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay26_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay27_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay28_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay29_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay30_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay31_out1;  // sfix10_En3
  reg signed [9:0] BodyDelay32_out1;  // sfix10_En3
  wire signed [10:0] b_2_out1;  // sfix11_En11
  wire signed [18:0] b_32_out1;  // sfix19_En11
  wire signed [26:0] b_31_mul_temp;  // sfix27_En20
  wire signed [18:0] b_31_out1;  // sfix19_En11
  wire signed [18:0] b_30_out1;  // sfix19_En11
  wire signed [26:0] b_29_mul_temp;  // sfix27_En20
  wire signed [18:0] b_29_out1;  // sfix19_En11
  wire signed [18:0] b_28_out1;  // sfix19_En11
  wire signed [26:0] b_27_mul_temp;  // sfix27_En20
  wire signed [18:0] b_27_out1;  // sfix19_En11
  wire signed [18:0] b_26_out1;  // sfix19_En11
  wire signed [26:0] b_25_mul_temp;  // sfix27_En20
  wire signed [18:0] b_25_out1;  // sfix19_En11
  wire signed [18:0] b_24_out1;  // sfix19_En11
  wire signed [26:0] b_23_mul_temp;  // sfix27_En20
  wire signed [18:0] b_23_out1;  // sfix19_En11
  wire signed [26:0] b_22_mul_temp;  // sfix27_En20
  wire signed [18:0] b_22_out1;  // sfix19_En11
  wire signed [26:0] b_21_mul_temp;  // sfix27_En20
  wire signed [17:0] b_21_out1;  // sfix18_En11
  wire signed [26:0] b_20_cast;  // sfix27_En20
  wire signed [17:0] b_20_out1;  // sfix18_En11
  wire signed [26:0] b_19_mul_temp;  // sfix27_En20
  wire signed [17:0] b_19_out1;  // sfix18_En11
  wire signed [17:0] b_18_out1;  // sfix18_En11
  wire signed [26:0] b_17_mul_temp;  // sfix27_En20
  wire signed [17:0] b_17_out1;  // sfix18_En11
  wire signed [16:0] b_16_out1;  // sfix17_En11
  wire signed [26:0] b_15_mul_temp;  // sfix27_En20
  wire signed [16:0] b_15_out1;  // sfix17_En11
  wire signed [26:0] b_14_cast;  // sfix27_En20
  wire signed [15:0] b_14_out1;  // sfix16_En11
  wire signed [26:0] b_13_mul_temp;  // sfix27_En20
  wire signed [15:0] b_13_out1;  // sfix16_En11
  wire signed [26:0] b_12_mul_temp;  // sfix27_En20
  wire signed [14:0] b_12_out1;  // sfix15_En11
  wire signed [26:0] b_11_mul_temp;  // sfix27_En20
  wire signed [14:0] b_11_out1;  // sfix15_En11
  wire signed [13:0] b_10_out1;  // sfix14_En11
  wire signed [26:0] b_9_mul_temp;  // sfix27_En20
  wire signed [13:0] b_9_out1;  // sfix14_En11
  wire signed [13:0] b_8_out1;  // sfix14_En11
  wire signed [26:0] b_7_mul_temp;  // sfix27_En20
  wire signed [12:0] b_7_out1;  // sfix13_En10
  wire signed [12:0] b_6_out1;  // sfix13_En11
  wire signed [26:0] b_5_mul_temp;  // sfix27_En20
  wire signed [12:0] b_5_out1;  // sfix13_En11
  wire signed [10:0] b_4_out1;  // sfix11_En11
  wire signed [26:0] b_3_mul_temp;  // sfix27_En20
  wire signed [10:0] b_3_out1;  // sfix11_En11
  wire signed [26:0] b_1_mul_temp;  // sfix27_En20
  wire signed [10:0] b_1_out1;  // sfix11_En11
  wire signed [11:0] BodyLSum2_add_cast;  // sfix12_En11
  wire signed [11:0] BodyLSum2_add_cast_1;  // sfix12_En11
  wire signed [11:0] BodyLSum2_add_temp;  // sfix12_En11
  wire signed [10:0] BodyLSum2_cast;  // sfix11_En11
  wire signed [18:0] BodyLSum2_out1;  // sfix19_En11
  wire signed [11:0] BodyLSum3_add_cast;  // sfix12_En11
  wire signed [10:0] BodyLSum3_add_cast_1;  // sfix11_En11
  wire signed [11:0] BodyLSum3_add_cast_2;  // sfix12_En11
  wire signed [11:0] BodyLSum3_add_temp;  // sfix12_En11
  wire signed [10:0] BodyLSum3_cast;  // sfix11_En11
  wire signed [18:0] BodyLSum3_out1;  // sfix19_En11
  wire signed [11:0] BodyLSum4_add_cast;  // sfix12_En11
  wire signed [10:0] BodyLSum4_add_cast_1;  // sfix11_En11
  wire signed [11:0] BodyLSum4_add_cast_2;  // sfix12_En11
  wire signed [11:0] BodyLSum4_add_temp;  // sfix12_En11
  wire signed [10:0] BodyLSum4_cast;  // sfix11_En11
  wire signed [18:0] BodyLSum4_out1;  // sfix19_En11
  wire signed [13:0] BodyLSum5_add_cast;  // sfix14_En11
  wire signed [12:0] BodyLSum5_add_cast_1;  // sfix13_En11
  wire signed [13:0] BodyLSum5_add_cast_2;  // sfix14_En11
  wire signed [13:0] BodyLSum5_add_temp;  // sfix14_En11
  wire signed [12:0] BodyLSum5_cast;  // sfix13_En11
  wire signed [18:0] BodyLSum5_out1;  // sfix19_En11
  wire signed [13:0] BodyLSum6_add_cast;  // sfix14_En11
  wire signed [12:0] BodyLSum6_add_cast_1;  // sfix13_En11
  wire signed [13:0] BodyLSum6_add_cast_2;  // sfix14_En11
  wire signed [13:0] BodyLSum6_add_temp;  // sfix14_En11
  wire signed [12:0] BodyLSum6_cast;  // sfix13_En11
  wire signed [18:0] BodyLSum6_out1;  // sfix19_En11
  wire signed [13:0] BodyLSum7_add_cast;  // sfix14_En10
  wire signed [12:0] BodyLSum7_add_cast_1;  // sfix13_En10
  wire signed [13:0] BodyLSum7_add_cast_2;  // sfix14_En10
  wire signed [13:0] BodyLSum7_add_temp;  // sfix14_En10
  wire signed [12:0] BodyLSum7_cast;  // sfix13_En10
  wire signed [18:0] BodyLSum7_out1;  // sfix19_En11
  wire signed [14:0] BodyLSum8_add_cast;  // sfix15_En11
  wire signed [13:0] BodyLSum8_add_cast_1;  // sfix14_En11
  wire signed [14:0] BodyLSum8_add_cast_2;  // sfix15_En11
  wire signed [14:0] BodyLSum8_add_temp;  // sfix15_En11
  wire signed [13:0] BodyLSum8_cast;  // sfix14_En11
  wire signed [18:0] BodyLSum8_out1;  // sfix19_En11
  wire signed [14:0] BodyLSum9_add_cast;  // sfix15_En11
  wire signed [13:0] BodyLSum9_add_cast_1;  // sfix14_En11
  wire signed [14:0] BodyLSum9_add_cast_2;  // sfix15_En11
  wire signed [14:0] BodyLSum9_add_temp;  // sfix15_En11
  wire signed [13:0] BodyLSum9_cast;  // sfix14_En11
  wire signed [18:0] BodyLSum9_out1;  // sfix19_En11
  wire signed [14:0] BodyLSum10_add_cast;  // sfix15_En11
  wire signed [13:0] BodyLSum10_add_cast_1;  // sfix14_En11
  wire signed [14:0] BodyLSum10_add_cast_2;  // sfix15_En11
  wire signed [14:0] BodyLSum10_add_temp;  // sfix15_En11
  wire signed [13:0] BodyLSum10_cast;  // sfix14_En11
  wire signed [18:0] BodyLSum10_out1;  // sfix19_En11
  wire signed [15:0] BodyLSum11_add_cast;  // sfix16_En11
  wire signed [14:0] BodyLSum11_add_cast_1;  // sfix15_En11
  wire signed [15:0] BodyLSum11_add_cast_2;  // sfix16_En11
  wire signed [15:0] BodyLSum11_add_temp;  // sfix16_En11
  wire signed [14:0] BodyLSum11_cast;  // sfix15_En11
  wire signed [18:0] BodyLSum11_out1;  // sfix19_En11
  wire signed [15:0] BodyLSum12_add_cast;  // sfix16_En11
  wire signed [14:0] BodyLSum12_add_cast_1;  // sfix15_En11
  wire signed [15:0] BodyLSum12_add_cast_2;  // sfix16_En11
  wire signed [15:0] BodyLSum12_add_temp;  // sfix16_En11
  wire signed [14:0] BodyLSum12_cast;  // sfix15_En11
  wire signed [18:0] BodyLSum12_out1;  // sfix19_En11
  wire signed [16:0] BodyLSum13_add_cast;  // sfix17_En11
  wire signed [15:0] BodyLSum13_add_cast_1;  // sfix16_En11
  wire signed [16:0] BodyLSum13_add_cast_2;  // sfix17_En11
  wire signed [16:0] BodyLSum13_add_temp;  // sfix17_En11
  wire signed [15:0] BodyLSum13_out1;  // sfix16_En11
  wire signed [16:0] BodyLSum14_add_cast;  // sfix17_En11
  wire signed [16:0] BodyLSum14_add_cast_1;  // sfix17_En11
  wire signed [16:0] BodyLSum14_add_temp;  // sfix17_En11
  wire signed [15:0] BodyLSum14_out1;  // sfix16_En11
  wire signed [17:0] BodyLSum15_add_cast;  // sfix18_En11
  wire signed [16:0] BodyLSum15_add_cast_1;  // sfix17_En11
  wire signed [17:0] BodyLSum15_add_cast_2;  // sfix18_En11
  wire signed [17:0] BodyLSum15_add_temp;  // sfix18_En11
  wire signed [16:0] BodyLSum15_out1;  // sfix17_En11
  wire signed [17:0] BodyLSum16_add_cast;  // sfix18_En11
  wire signed [17:0] BodyLSum16_add_cast_1;  // sfix18_En11
  wire signed [17:0] BodyLSum16_add_temp;  // sfix18_En11
  wire signed [16:0] BodyLSum16_out1;  // sfix17_En11
  wire signed [18:0] BodyLSum17_add_cast;  // sfix19_En11
  wire signed [17:0] BodyLSum17_add_cast_1;  // sfix18_En11
  wire signed [18:0] BodyLSum17_add_cast_2;  // sfix19_En11
  wire signed [18:0] BodyLSum17_add_temp;  // sfix19_En11
  wire signed [17:0] BodyLSum17_out1;  // sfix18_En11
  wire signed [18:0] BodyLSum18_add_cast;  // sfix19_En11
  wire signed [18:0] BodyLSum18_add_cast_1;  // sfix19_En11
  wire signed [18:0] BodyLSum18_add_temp;  // sfix19_En11
  wire signed [17:0] BodyLSum18_out1;  // sfix18_En11
  wire signed [18:0] BodyLSum19_add_cast;  // sfix19_En11
  wire signed [18:0] BodyLSum19_add_cast_1;  // sfix19_En11
  wire signed [18:0] BodyLSum19_add_temp;  // sfix19_En11
  wire signed [17:0] BodyLSum19_out1;  // sfix18_En11
  wire signed [18:0] BodyLSum20_add_cast;  // sfix19_En11
  wire signed [18:0] BodyLSum20_add_cast_1;  // sfix19_En11
  wire signed [18:0] BodyLSum20_add_temp;  // sfix19_En11
  wire signed [17:0] BodyLSum20_out1;  // sfix18_En11
  wire signed [18:0] BodyLSum21_add_cast;  // sfix19_En11
  wire signed [18:0] BodyLSum21_add_cast_1;  // sfix19_En11
  wire signed [18:0] BodyLSum21_add_temp;  // sfix19_En11
  wire signed [17:0] BodyLSum21_out1;  // sfix18_En11
  wire signed [19:0] BodyLSum22_add_cast;  // sfix20_En11
  wire signed [18:0] BodyLSum22_add_cast_1;  // sfix19_En11
  wire signed [19:0] BodyLSum22_add_cast_2;  // sfix20_En11
  wire signed [19:0] BodyLSum22_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum22_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum23_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum23_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum23_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum23_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum24_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum24_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum24_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum24_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum25_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum25_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum25_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum25_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum26_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum26_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum26_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum26_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum27_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum27_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum27_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum27_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum28_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum28_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum28_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum28_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum29_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum29_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum29_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum29_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum30_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum30_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum30_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum30_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum31_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum31_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum31_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum31_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum32_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum32_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum32_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum32_out1;  // sfix19_En11
  reg signed [9:0] BodyDelay33_out1;  // sfix10_En3
  wire signed [26:0] b_33_mul_temp;  // sfix27_En20
  wire signed [18:0] b_33_out1;  // sfix19_En11
  wire signed [19:0] BodyLSum33_add_cast;  // sfix20_En11
  wire signed [19:0] BodyLSum33_add_cast_1;  // sfix20_En11
  wire signed [19:0] BodyLSum33_add_temp;  // sfix20_En11
  wire signed [18:0] BodyLSum33_cast;  // sfix19_En11
  wire signed [9:0] BodyLSum33_out1;  // sfix10_En3
  reg signed [9:0] BodyLSum33_out1_1;


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : BodyDelay2_process
      if (reset == 1'b1) begin
        BodyDelay2_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay2_out1 <= input_rsvd;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay3_process
      if (reset == 1'b1) begin
        BodyDelay3_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay3_out1 <= BodyDelay2_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay4_process
      if (reset == 1'b1) begin
        BodyDelay4_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay4_out1 <= BodyDelay3_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay5_process
      if (reset == 1'b1) begin
        BodyDelay5_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay5_out1 <= BodyDelay4_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay6_process
      if (reset == 1'b1) begin
        BodyDelay6_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay6_out1 <= BodyDelay5_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay7_process
      if (reset == 1'b1) begin
        BodyDelay7_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay7_out1 <= BodyDelay6_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay8_process
      if (reset == 1'b1) begin
        BodyDelay8_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay8_out1 <= BodyDelay7_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay9_process
      if (reset == 1'b1) begin
        BodyDelay9_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay9_out1 <= BodyDelay8_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay10_process
      if (reset == 1'b1) begin
        BodyDelay10_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay10_out1 <= BodyDelay9_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay11_process
      if (reset == 1'b1) begin
        BodyDelay11_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay11_out1 <= BodyDelay10_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay12_process
      if (reset == 1'b1) begin
        BodyDelay12_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay12_out1 <= BodyDelay11_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay13_process
      if (reset == 1'b1) begin
        BodyDelay13_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay13_out1 <= BodyDelay12_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay14_process
      if (reset == 1'b1) begin
        BodyDelay14_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay14_out1 <= BodyDelay13_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay15_process
      if (reset == 1'b1) begin
        BodyDelay15_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay15_out1 <= BodyDelay14_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay16_process
      if (reset == 1'b1) begin
        BodyDelay16_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay16_out1 <= BodyDelay15_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay17_process
      if (reset == 1'b1) begin
        BodyDelay17_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay17_out1 <= BodyDelay16_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay18_process
      if (reset == 1'b1) begin
        BodyDelay18_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay18_out1 <= BodyDelay17_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay19_process
      if (reset == 1'b1) begin
        BodyDelay19_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay19_out1 <= BodyDelay18_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay20_process
      if (reset == 1'b1) begin
        BodyDelay20_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay20_out1 <= BodyDelay19_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay21_process
      if (reset == 1'b1) begin
        BodyDelay21_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay21_out1 <= BodyDelay20_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay22_process
      if (reset == 1'b1) begin
        BodyDelay22_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay22_out1 <= BodyDelay21_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay23_process
      if (reset == 1'b1) begin
        BodyDelay23_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay23_out1 <= BodyDelay22_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay24_process
      if (reset == 1'b1) begin
        BodyDelay24_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay24_out1 <= BodyDelay23_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay25_process
      if (reset == 1'b1) begin
        BodyDelay25_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay25_out1 <= BodyDelay24_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay26_process
      if (reset == 1'b1) begin
        BodyDelay26_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay26_out1 <= BodyDelay25_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay27_process
      if (reset == 1'b1) begin
        BodyDelay27_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay27_out1 <= BodyDelay26_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay28_process
      if (reset == 1'b1) begin
        BodyDelay28_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay28_out1 <= BodyDelay27_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay29_process
      if (reset == 1'b1) begin
        BodyDelay29_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay29_out1 <= BodyDelay28_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay30_process
      if (reset == 1'b1) begin
        BodyDelay30_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay30_out1 <= BodyDelay29_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay31_process
      if (reset == 1'b1) begin
        BodyDelay31_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay31_out1 <= BodyDelay30_out1;
        end
      end
    end


  always @(posedge clk or posedge reset)
    begin : BodyDelay32_process
      if (reset == 1'b1) begin
        BodyDelay32_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay32_out1 <= BodyDelay31_out1;
        end
      end
    end


  assign b_2_out1 = 11'sb00000000000;


  assign b_32_out1 = 19'sb0000000000000000000;


  assign b_31_mul_temp = 17'sb00000001100100001 * BodyDelay31_out1;
  assign b_31_out1 = ({b_31_mul_temp[26], b_31_mul_temp[26:9]}) + $signed({1'b0, b_31_mul_temp[8]});


  assign b_30_out1 = 19'sb0000000000000000000;


  assign b_29_mul_temp = 17'sb11111011111001011 * BodyDelay29_out1;
  assign b_29_out1 = ({b_29_mul_temp[26], b_29_mul_temp[26:9]}) + $signed({1'b0, b_29_mul_temp[8]});


  assign b_28_out1 = 19'sb0000000000000000000;


  assign b_27_mul_temp = 17'sb00000101101110010 * BodyDelay27_out1;
  assign b_27_out1 = ({b_27_mul_temp[26], b_27_mul_temp[26:9]}) + $signed({1'b0, b_27_mul_temp[8]});


  assign b_26_out1 = 19'sb0000000000000000000;


  assign b_25_mul_temp = 17'sb11111110100001100 * BodyDelay25_out1;
  assign b_25_out1 = ({b_25_mul_temp[26], b_25_mul_temp[26:9]}) + $signed({1'b0, b_25_mul_temp[8]});


  assign b_24_out1 = 19'sb0000000000000000000;


  assign b_23_mul_temp = 17'sb11110011000010000 * BodyDelay23_out1;
  assign b_23_out1 = ({b_23_mul_temp[26], b_23_mul_temp[26:9]}) + $signed({1'b0, b_23_mul_temp[8]});


  assign b_22_mul_temp = 17'sb11111111111111111 * BodyDelay22_out1;
  assign b_22_out1 = ({b_22_mul_temp[26], b_22_mul_temp[26:9]}) + $signed({1'b0, b_22_mul_temp[8]});


  assign b_21_mul_temp = 17'sb00100011111110001 * BodyDelay21_out1;
  assign b_21_out1 = ((b_21_mul_temp[26] == 1'b0) && (b_21_mul_temp[25:9] == 17'b11111111111111111) ? 18'sb011111111111111111 :
              b_21_mul_temp[26:9] + $signed({1'b0, b_21_mul_temp[8]}));


  assign b_20_cast = {{17{BodyDelay20_out1[9]}}, BodyDelay20_out1};
  assign b_20_out1 = ((b_20_cast[26] == 1'b0) && (b_20_cast[25:9] == 17'b11111111111111111) ? 18'sb011111111111111111 :
              b_20_cast[26:9] + $signed({1'b0, b_20_cast[8]}));


  assign b_19_mul_temp = 17'sb11000101111100101 * BodyDelay19_out1;
  assign b_19_out1 = ((b_19_mul_temp[26] == 1'b0) && (b_19_mul_temp[25:9] == 17'b11111111111111111) ? 18'sb011111111111111111 :
              b_19_mul_temp[26:9] + $signed({1'b0, b_19_mul_temp[8]}));


  assign b_18_out1 = 18'sb000000000000000000;


  assign b_17_mul_temp = 17'sb01000011001111010 * BodyDelay17_out1;
  assign b_17_out1 = ((b_17_mul_temp[26] == 1'b0) && (b_17_mul_temp[25:9] == 17'b11111111111111111) ? 18'sb011111111111111111 :
              b_17_mul_temp[26:9] + $signed({1'b0, b_17_mul_temp[8]}));


  assign b_16_out1 = 17'sb00000000000000000;


  assign b_15_mul_temp = 17'sb11000101111100101 * BodyDelay15_out1;
  assign b_15_out1 = (((b_15_mul_temp[26] == 1'b0) && (b_15_mul_temp[25] != 1'b0)) || ((b_15_mul_temp[26] == 1'b0) && (b_15_mul_temp[25:9] == 17'sb01111111111111111)) ? 17'sb01111111111111111 :
              ((b_15_mul_temp[26] == 1'b1) && (b_15_mul_temp[25] != 1'b1) ? 17'sb10000000000000000 :
              b_15_mul_temp[25:9] + $signed({1'b0, b_15_mul_temp[8]})));


  assign b_14_cast = {{17{BodyDelay14_out1[9]}}, BodyDelay14_out1};
  assign b_14_out1 = (((b_14_cast[26] == 1'b0) && (b_14_cast[25:24] != 2'b00)) || ((b_14_cast[26] == 1'b0) && (b_14_cast[24:9] == 16'sb0111111111111111)) ? 16'sb0111111111111111 :
              ((b_14_cast[26] == 1'b1) && (b_14_cast[25:24] != 2'b11) ? 16'sb1000000000000000 :
              b_14_cast[24:9] + $signed({1'b0, b_14_cast[8]})));


  assign b_13_mul_temp = 17'sb00100011111110001 * BodyDelay13_out1;
  assign b_13_out1 = (((b_13_mul_temp[26] == 1'b0) && (b_13_mul_temp[25:24] != 2'b00)) || ((b_13_mul_temp[26] == 1'b0) && (b_13_mul_temp[24:9] == 16'sb0111111111111111)) ? 16'sb0111111111111111 :
              ((b_13_mul_temp[26] == 1'b1) && (b_13_mul_temp[25:24] != 2'b11) ? 16'sb1000000000000000 :
              b_13_mul_temp[24:9] + $signed({1'b0, b_13_mul_temp[8]})));


  assign b_12_mul_temp = 17'sb11111111111111111 * BodyDelay12_out1;
  assign b_12_out1 = (((b_12_mul_temp[26] == 1'b0) && (b_12_mul_temp[25:23] != 3'b000)) || ((b_12_mul_temp[26] == 1'b0) && (b_12_mul_temp[23:9] == 15'sb011111111111111)) ? 15'sb011111111111111 :
              ((b_12_mul_temp[26] == 1'b1) && (b_12_mul_temp[25:23] != 3'b111) ? 15'sb100000000000000 :
              b_12_mul_temp[23:9] + $signed({1'b0, b_12_mul_temp[8]})));


  assign b_11_mul_temp = 17'sb11110011000010000 * BodyDelay11_out1;
  assign b_11_out1 = (((b_11_mul_temp[26] == 1'b0) && (b_11_mul_temp[25:23] != 3'b000)) || ((b_11_mul_temp[26] == 1'b0) && (b_11_mul_temp[23:9] == 15'sb011111111111111)) ? 15'sb011111111111111 :
              ((b_11_mul_temp[26] == 1'b1) && (b_11_mul_temp[25:23] != 3'b111) ? 15'sb100000000000000 :
              b_11_mul_temp[23:9] + $signed({1'b0, b_11_mul_temp[8]})));


  assign b_10_out1 = 14'sb00000000000000;


  assign b_9_mul_temp = 17'sb11111110100001100 * BodyDelay9_out1;
  assign b_9_out1 = (((b_9_mul_temp[26] == 1'b0) && (b_9_mul_temp[25:22] != 4'b0000)) || ((b_9_mul_temp[26] == 1'b0) && (b_9_mul_temp[22:9] == 14'sb01111111111111)) ? 14'sb01111111111111 :
              ((b_9_mul_temp[26] == 1'b1) && (b_9_mul_temp[25:22] != 4'b1111) ? 14'sb10000000000000 :
              b_9_mul_temp[22:9] + $signed({1'b0, b_9_mul_temp[8]})));


  assign b_8_out1 = 14'sb00000000000000;


  assign b_7_mul_temp = 17'sb00000101101110010 * BodyDelay7_out1;
  assign b_7_out1 = (((b_7_mul_temp[26] == 1'b0) && (b_7_mul_temp[25:22] != 4'b0000)) || ((b_7_mul_temp[26] == 1'b0) && (b_7_mul_temp[22:10] == 13'sb0111111111111)) ? 13'sb0111111111111 :
              ((b_7_mul_temp[26] == 1'b1) && (b_7_mul_temp[25:22] != 4'b1111) ? 13'sb1000000000000 :
              b_7_mul_temp[22:10] + $signed({1'b0, b_7_mul_temp[9]})));


  assign b_6_out1 = 13'sb0000000000000;


  assign b_5_mul_temp = 17'sb11111011111001011 * BodyDelay5_out1;
  assign b_5_out1 = (((b_5_mul_temp[26] == 1'b0) && (b_5_mul_temp[25:21] != 5'b00000)) || ((b_5_mul_temp[26] == 1'b0) && (b_5_mul_temp[21:9] == 13'sb0111111111111)) ? 13'sb0111111111111 :
              ((b_5_mul_temp[26] == 1'b1) && (b_5_mul_temp[25:21] != 5'b11111) ? 13'sb1000000000000 :
              b_5_mul_temp[21:9] + $signed({1'b0, b_5_mul_temp[8]})));


  assign b_4_out1 = 11'sb00000000000;


  assign b_3_mul_temp = 17'sb00000001100100001 * BodyDelay3_out1;
  assign b_3_out1 = (((b_3_mul_temp[26] == 1'b0) && (b_3_mul_temp[25:19] != 7'b0000000)) || ((b_3_mul_temp[26] == 1'b0) && (b_3_mul_temp[19:9] == 11'sb01111111111)) ? 11'sb01111111111 :
              ((b_3_mul_temp[26] == 1'b1) && (b_3_mul_temp[25:19] != 7'b1111111) ? 11'sb10000000000 :
              b_3_mul_temp[19:9] + $signed({1'b0, b_3_mul_temp[8]})));


  assign b_1_mul_temp = 17'sb11111111101111101 * input_rsvd;
  assign b_1_out1 = (((b_1_mul_temp[26] == 1'b0) && (b_1_mul_temp[25:19] != 7'b0000000)) || ((b_1_mul_temp[26] == 1'b0) && (b_1_mul_temp[19:9] == 11'sb01111111111)) ? 11'sb01111111111 :
              ((b_1_mul_temp[26] == 1'b1) && (b_1_mul_temp[25:19] != 7'b1111111) ? 11'sb10000000000 :
              b_1_mul_temp[19:9] + $signed({1'b0, b_1_mul_temp[8]})));


  assign BodyLSum2_add_cast = {b_2_out1[10], b_2_out1};
  assign BodyLSum2_add_cast_1 = {b_1_out1[10], b_1_out1};
  assign BodyLSum2_add_temp = BodyLSum2_add_cast + BodyLSum2_add_cast_1;
  assign BodyLSum2_cast = ((BodyLSum2_add_temp[11] == 1'b0) && (BodyLSum2_add_temp[10] != 1'b0) ? 11'sb01111111111 :
              ((BodyLSum2_add_temp[11] == 1'b1) && (BodyLSum2_add_temp[10] != 1'b1) ? 11'sb10000000000 :
              $signed(BodyLSum2_add_temp[10:0])));
  assign BodyLSum2_out1 = {{8{BodyLSum2_cast[10]}}, BodyLSum2_cast};


  assign BodyLSum3_add_cast = {b_3_out1[10], b_3_out1};
  assign BodyLSum3_add_cast_1 = ((BodyLSum2_out1[18] == 1'b0) && (BodyLSum2_out1[17:10] != 8'b00000000) ? 11'sb01111111111 :
              ((BodyLSum2_out1[18] == 1'b1) && (BodyLSum2_out1[17:10] != 8'b11111111) ? 11'sb10000000000 :
              $signed(BodyLSum2_out1[10:0])));
  assign BodyLSum3_add_cast_2 = {BodyLSum3_add_cast_1[10], BodyLSum3_add_cast_1};
  assign BodyLSum3_add_temp = BodyLSum3_add_cast + BodyLSum3_add_cast_2;
  assign BodyLSum3_cast = ((BodyLSum3_add_temp[11] == 1'b0) && (BodyLSum3_add_temp[10] != 1'b0) ? 11'sb01111111111 :
              ((BodyLSum3_add_temp[11] == 1'b1) && (BodyLSum3_add_temp[10] != 1'b1) ? 11'sb10000000000 :
              $signed(BodyLSum3_add_temp[10:0])));
  assign BodyLSum3_out1 = {{8{BodyLSum3_cast[10]}}, BodyLSum3_cast};


  assign BodyLSum4_add_cast = {b_4_out1[10], b_4_out1};
  assign BodyLSum4_add_cast_1 = ((BodyLSum3_out1[18] == 1'b0) && (BodyLSum3_out1[17:10] != 8'b00000000) ? 11'sb01111111111 :
              ((BodyLSum3_out1[18] == 1'b1) && (BodyLSum3_out1[17:10] != 8'b11111111) ? 11'sb10000000000 :
              $signed(BodyLSum3_out1[10:0])));
  assign BodyLSum4_add_cast_2 = {BodyLSum4_add_cast_1[10], BodyLSum4_add_cast_1};
  assign BodyLSum4_add_temp = BodyLSum4_add_cast + BodyLSum4_add_cast_2;
  assign BodyLSum4_cast = ((BodyLSum4_add_temp[11] == 1'b0) && (BodyLSum4_add_temp[10] != 1'b0) ? 11'sb01111111111 :
              ((BodyLSum4_add_temp[11] == 1'b1) && (BodyLSum4_add_temp[10] != 1'b1) ? 11'sb10000000000 :
              $signed(BodyLSum4_add_temp[10:0])));
  assign BodyLSum4_out1 = {{8{BodyLSum4_cast[10]}}, BodyLSum4_cast};


  assign BodyLSum5_add_cast = {b_5_out1[12], b_5_out1};
  assign BodyLSum5_add_cast_1 = ((BodyLSum4_out1[18] == 1'b0) && (BodyLSum4_out1[17:12] != 6'b000000) ? 13'sb0111111111111 :
              ((BodyLSum4_out1[18] == 1'b1) && (BodyLSum4_out1[17:12] != 6'b111111) ? 13'sb1000000000000 :
              $signed(BodyLSum4_out1[12:0])));
  assign BodyLSum5_add_cast_2 = {BodyLSum5_add_cast_1[12], BodyLSum5_add_cast_1};
  assign BodyLSum5_add_temp = BodyLSum5_add_cast + BodyLSum5_add_cast_2;
  assign BodyLSum5_cast = ((BodyLSum5_add_temp[13] == 1'b0) && (BodyLSum5_add_temp[12] != 1'b0) ? 13'sb0111111111111 :
              ((BodyLSum5_add_temp[13] == 1'b1) && (BodyLSum5_add_temp[12] != 1'b1) ? 13'sb1000000000000 :
              $signed(BodyLSum5_add_temp[12:0])));
  assign BodyLSum5_out1 = {{6{BodyLSum5_cast[12]}}, BodyLSum5_cast};


  assign BodyLSum6_add_cast = {b_6_out1[12], b_6_out1};
  assign BodyLSum6_add_cast_1 = ((BodyLSum5_out1[18] == 1'b0) && (BodyLSum5_out1[17:12] != 6'b000000) ? 13'sb0111111111111 :
              ((BodyLSum5_out1[18] == 1'b1) && (BodyLSum5_out1[17:12] != 6'b111111) ? 13'sb1000000000000 :
              $signed(BodyLSum5_out1[12:0])));
  assign BodyLSum6_add_cast_2 = {BodyLSum6_add_cast_1[12], BodyLSum6_add_cast_1};
  assign BodyLSum6_add_temp = BodyLSum6_add_cast + BodyLSum6_add_cast_2;
  assign BodyLSum6_cast = ((BodyLSum6_add_temp[13] == 1'b0) && (BodyLSum6_add_temp[12] != 1'b0) ? 13'sb0111111111111 :
              ((BodyLSum6_add_temp[13] == 1'b1) && (BodyLSum6_add_temp[12] != 1'b1) ? 13'sb1000000000000 :
              $signed(BodyLSum6_add_temp[12:0])));
  assign BodyLSum6_out1 = {{6{BodyLSum6_cast[12]}}, BodyLSum6_cast};


  assign BodyLSum7_add_cast = {b_7_out1[12], b_7_out1};
  assign BodyLSum7_add_cast_1 = (((BodyLSum6_out1[18] == 1'b0) && (BodyLSum6_out1[17:13] != 5'b00000)) || ((BodyLSum6_out1[18] == 1'b0) && (BodyLSum6_out1[13:1] == 13'sb0111111111111)) ? 13'sb0111111111111 :
              ((BodyLSum6_out1[18] == 1'b1) && (BodyLSum6_out1[17:13] != 5'b11111) ? 13'sb1000000000000 :
              BodyLSum6_out1[13:1] + $signed({1'b0, BodyLSum6_out1[0]})));
  assign BodyLSum7_add_cast_2 = {BodyLSum7_add_cast_1[12], BodyLSum7_add_cast_1};
  assign BodyLSum7_add_temp = BodyLSum7_add_cast + BodyLSum7_add_cast_2;
  assign BodyLSum7_cast = ((BodyLSum7_add_temp[13] == 1'b0) && (BodyLSum7_add_temp[12] != 1'b0) ? 13'sb0111111111111 :
              ((BodyLSum7_add_temp[13] == 1'b1) && (BodyLSum7_add_temp[12] != 1'b1) ? 13'sb1000000000000 :
              $signed(BodyLSum7_add_temp[12:0])));
  assign BodyLSum7_out1 = {{5{BodyLSum7_cast[12]}}, {BodyLSum7_cast, 1'b0}};


  assign BodyLSum8_add_cast = {b_8_out1[13], b_8_out1};
  assign BodyLSum8_add_cast_1 = ((BodyLSum7_out1[18] == 1'b0) && (BodyLSum7_out1[17:13] != 5'b00000) ? 14'sb01111111111111 :
              ((BodyLSum7_out1[18] == 1'b1) && (BodyLSum7_out1[17:13] != 5'b11111) ? 14'sb10000000000000 :
              $signed(BodyLSum7_out1[13:0])));
  assign BodyLSum8_add_cast_2 = {BodyLSum8_add_cast_1[13], BodyLSum8_add_cast_1};
  assign BodyLSum8_add_temp = BodyLSum8_add_cast + BodyLSum8_add_cast_2;
  assign BodyLSum8_cast = ((BodyLSum8_add_temp[14] == 1'b0) && (BodyLSum8_add_temp[13] != 1'b0) ? 14'sb01111111111111 :
              ((BodyLSum8_add_temp[14] == 1'b1) && (BodyLSum8_add_temp[13] != 1'b1) ? 14'sb10000000000000 :
              $signed(BodyLSum8_add_temp[13:0])));
  assign BodyLSum8_out1 = {{5{BodyLSum8_cast[13]}}, BodyLSum8_cast};


  assign BodyLSum9_add_cast = {b_9_out1[13], b_9_out1};
  assign BodyLSum9_add_cast_1 = ((BodyLSum8_out1[18] == 1'b0) && (BodyLSum8_out1[17:13] != 5'b00000) ? 14'sb01111111111111 :
              ((BodyLSum8_out1[18] == 1'b1) && (BodyLSum8_out1[17:13] != 5'b11111) ? 14'sb10000000000000 :
              $signed(BodyLSum8_out1[13:0])));
  assign BodyLSum9_add_cast_2 = {BodyLSum9_add_cast_1[13], BodyLSum9_add_cast_1};
  assign BodyLSum9_add_temp = BodyLSum9_add_cast + BodyLSum9_add_cast_2;
  assign BodyLSum9_cast = ((BodyLSum9_add_temp[14] == 1'b0) && (BodyLSum9_add_temp[13] != 1'b0) ? 14'sb01111111111111 :
              ((BodyLSum9_add_temp[14] == 1'b1) && (BodyLSum9_add_temp[13] != 1'b1) ? 14'sb10000000000000 :
              $signed(BodyLSum9_add_temp[13:0])));
  assign BodyLSum9_out1 = {{5{BodyLSum9_cast[13]}}, BodyLSum9_cast};


  assign BodyLSum10_add_cast = {b_10_out1[13], b_10_out1};
  assign BodyLSum10_add_cast_1 = ((BodyLSum9_out1[18] == 1'b0) && (BodyLSum9_out1[17:13] != 5'b00000) ? 14'sb01111111111111 :
              ((BodyLSum9_out1[18] == 1'b1) && (BodyLSum9_out1[17:13] != 5'b11111) ? 14'sb10000000000000 :
              $signed(BodyLSum9_out1[13:0])));
  assign BodyLSum10_add_cast_2 = {BodyLSum10_add_cast_1[13], BodyLSum10_add_cast_1};
  assign BodyLSum10_add_temp = BodyLSum10_add_cast + BodyLSum10_add_cast_2;
  assign BodyLSum10_cast = ((BodyLSum10_add_temp[14] == 1'b0) && (BodyLSum10_add_temp[13] != 1'b0) ? 14'sb01111111111111 :
              ((BodyLSum10_add_temp[14] == 1'b1) && (BodyLSum10_add_temp[13] != 1'b1) ? 14'sb10000000000000 :
              $signed(BodyLSum10_add_temp[13:0])));
  assign BodyLSum10_out1 = {{5{BodyLSum10_cast[13]}}, BodyLSum10_cast};


  assign BodyLSum11_add_cast = {b_11_out1[14], b_11_out1};
  assign BodyLSum11_add_cast_1 = ((BodyLSum10_out1[18] == 1'b0) && (BodyLSum10_out1[17:14] != 4'b0000) ? 15'sb011111111111111 :
              ((BodyLSum10_out1[18] == 1'b1) && (BodyLSum10_out1[17:14] != 4'b1111) ? 15'sb100000000000000 :
              $signed(BodyLSum10_out1[14:0])));
  assign BodyLSum11_add_cast_2 = {BodyLSum11_add_cast_1[14], BodyLSum11_add_cast_1};
  assign BodyLSum11_add_temp = BodyLSum11_add_cast + BodyLSum11_add_cast_2;
  assign BodyLSum11_cast = ((BodyLSum11_add_temp[15] == 1'b0) && (BodyLSum11_add_temp[14] != 1'b0) ? 15'sb011111111111111 :
              ((BodyLSum11_add_temp[15] == 1'b1) && (BodyLSum11_add_temp[14] != 1'b1) ? 15'sb100000000000000 :
              $signed(BodyLSum11_add_temp[14:0])));
  assign BodyLSum11_out1 = {{4{BodyLSum11_cast[14]}}, BodyLSum11_cast};


  assign BodyLSum12_add_cast = {b_12_out1[14], b_12_out1};
  assign BodyLSum12_add_cast_1 = ((BodyLSum11_out1[18] == 1'b0) && (BodyLSum11_out1[17:14] != 4'b0000) ? 15'sb011111111111111 :
              ((BodyLSum11_out1[18] == 1'b1) && (BodyLSum11_out1[17:14] != 4'b1111) ? 15'sb100000000000000 :
              $signed(BodyLSum11_out1[14:0])));
  assign BodyLSum12_add_cast_2 = {BodyLSum12_add_cast_1[14], BodyLSum12_add_cast_1};
  assign BodyLSum12_add_temp = BodyLSum12_add_cast + BodyLSum12_add_cast_2;
  assign BodyLSum12_cast = ((BodyLSum12_add_temp[15] == 1'b0) && (BodyLSum12_add_temp[14] != 1'b0) ? 15'sb011111111111111 :
              ((BodyLSum12_add_temp[15] == 1'b1) && (BodyLSum12_add_temp[14] != 1'b1) ? 15'sb100000000000000 :
              $signed(BodyLSum12_add_temp[14:0])));
  assign BodyLSum12_out1 = {{4{BodyLSum12_cast[14]}}, BodyLSum12_cast};


  assign BodyLSum13_add_cast = {b_13_out1[15], b_13_out1};
  assign BodyLSum13_add_cast_1 = ((BodyLSum12_out1[18] == 1'b0) && (BodyLSum12_out1[17:15] != 3'b000) ? 16'sb0111111111111111 :
              ((BodyLSum12_out1[18] == 1'b1) && (BodyLSum12_out1[17:15] != 3'b111) ? 16'sb1000000000000000 :
              $signed(BodyLSum12_out1[15:0])));
  assign BodyLSum13_add_cast_2 = {BodyLSum13_add_cast_1[15], BodyLSum13_add_cast_1};
  assign BodyLSum13_add_temp = BodyLSum13_add_cast + BodyLSum13_add_cast_2;
  assign BodyLSum13_out1 = ((BodyLSum13_add_temp[16] == 1'b0) && (BodyLSum13_add_temp[15] != 1'b0) ? 16'sb0111111111111111 :
              ((BodyLSum13_add_temp[16] == 1'b1) && (BodyLSum13_add_temp[15] != 1'b1) ? 16'sb1000000000000000 :
              $signed(BodyLSum13_add_temp[15:0])));


  assign BodyLSum14_add_cast = {b_14_out1[15], b_14_out1};
  assign BodyLSum14_add_cast_1 = {BodyLSum13_out1[15], BodyLSum13_out1};
  assign BodyLSum14_add_temp = BodyLSum14_add_cast + BodyLSum14_add_cast_1;
  assign BodyLSum14_out1 = ((BodyLSum14_add_temp[16] == 1'b0) && (BodyLSum14_add_temp[15] != 1'b0) ? 16'sb0111111111111111 :
              ((BodyLSum14_add_temp[16] == 1'b1) && (BodyLSum14_add_temp[15] != 1'b1) ? 16'sb1000000000000000 :
              $signed(BodyLSum14_add_temp[15:0])));


  assign BodyLSum15_add_cast = {b_15_out1[16], b_15_out1};
  assign BodyLSum15_add_cast_1 = {BodyLSum14_out1[15], BodyLSum14_out1};
  assign BodyLSum15_add_cast_2 = {BodyLSum15_add_cast_1[16], BodyLSum15_add_cast_1};
  assign BodyLSum15_add_temp = BodyLSum15_add_cast + BodyLSum15_add_cast_2;
  assign BodyLSum15_out1 = ((BodyLSum15_add_temp[17] == 1'b0) && (BodyLSum15_add_temp[16] != 1'b0) ? 17'sb01111111111111111 :
              ((BodyLSum15_add_temp[17] == 1'b1) && (BodyLSum15_add_temp[16] != 1'b1) ? 17'sb10000000000000000 :
              $signed(BodyLSum15_add_temp[16:0])));


  assign BodyLSum16_add_cast = {b_16_out1[16], b_16_out1};
  assign BodyLSum16_add_cast_1 = {BodyLSum15_out1[16], BodyLSum15_out1};
  assign BodyLSum16_add_temp = BodyLSum16_add_cast + BodyLSum16_add_cast_1;
  assign BodyLSum16_out1 = ((BodyLSum16_add_temp[17] == 1'b0) && (BodyLSum16_add_temp[16] != 1'b0) ? 17'sb01111111111111111 :
              ((BodyLSum16_add_temp[17] == 1'b1) && (BodyLSum16_add_temp[16] != 1'b1) ? 17'sb10000000000000000 :
              $signed(BodyLSum16_add_temp[16:0])));


  assign BodyLSum17_add_cast = {b_17_out1[17], b_17_out1};
  assign BodyLSum17_add_cast_1 = {BodyLSum16_out1[16], BodyLSum16_out1};
  assign BodyLSum17_add_cast_2 = {BodyLSum17_add_cast_1[17], BodyLSum17_add_cast_1};
  assign BodyLSum17_add_temp = BodyLSum17_add_cast + BodyLSum17_add_cast_2;
  assign BodyLSum17_out1 = ((BodyLSum17_add_temp[18] == 1'b0) && (BodyLSum17_add_temp[17] != 1'b0) ? 18'sb011111111111111111 :
              ((BodyLSum17_add_temp[18] == 1'b1) && (BodyLSum17_add_temp[17] != 1'b1) ? 18'sb100000000000000000 :
              $signed(BodyLSum17_add_temp[17:0])));


  assign BodyLSum18_add_cast = {b_18_out1[17], b_18_out1};
  assign BodyLSum18_add_cast_1 = {BodyLSum17_out1[17], BodyLSum17_out1};
  assign BodyLSum18_add_temp = BodyLSum18_add_cast + BodyLSum18_add_cast_1;
  assign BodyLSum18_out1 = ((BodyLSum18_add_temp[18] == 1'b0) && (BodyLSum18_add_temp[17] != 1'b0) ? 18'sb011111111111111111 :
              ((BodyLSum18_add_temp[18] == 1'b1) && (BodyLSum18_add_temp[17] != 1'b1) ? 18'sb100000000000000000 :
              $signed(BodyLSum18_add_temp[17:0])));


  assign BodyLSum19_add_cast = {b_19_out1[17], b_19_out1};
  assign BodyLSum19_add_cast_1 = {BodyLSum18_out1[17], BodyLSum18_out1};
  assign BodyLSum19_add_temp = BodyLSum19_add_cast + BodyLSum19_add_cast_1;
  assign BodyLSum19_out1 = ((BodyLSum19_add_temp[18] == 1'b0) && (BodyLSum19_add_temp[17] != 1'b0) ? 18'sb011111111111111111 :
              ((BodyLSum19_add_temp[18] == 1'b1) && (BodyLSum19_add_temp[17] != 1'b1) ? 18'sb100000000000000000 :
              $signed(BodyLSum19_add_temp[17:0])));


  assign BodyLSum20_add_cast = {b_20_out1[17], b_20_out1};
  assign BodyLSum20_add_cast_1 = {BodyLSum19_out1[17], BodyLSum19_out1};
  assign BodyLSum20_add_temp = BodyLSum20_add_cast + BodyLSum20_add_cast_1;
  assign BodyLSum20_out1 = ((BodyLSum20_add_temp[18] == 1'b0) && (BodyLSum20_add_temp[17] != 1'b0) ? 18'sb011111111111111111 :
              ((BodyLSum20_add_temp[18] == 1'b1) && (BodyLSum20_add_temp[17] != 1'b1) ? 18'sb100000000000000000 :
              $signed(BodyLSum20_add_temp[17:0])));


  assign BodyLSum21_add_cast = {b_21_out1[17], b_21_out1};
  assign BodyLSum21_add_cast_1 = {BodyLSum20_out1[17], BodyLSum20_out1};
  assign BodyLSum21_add_temp = BodyLSum21_add_cast + BodyLSum21_add_cast_1;
  assign BodyLSum21_out1 = ((BodyLSum21_add_temp[18] == 1'b0) && (BodyLSum21_add_temp[17] != 1'b0) ? 18'sb011111111111111111 :
              ((BodyLSum21_add_temp[18] == 1'b1) && (BodyLSum21_add_temp[17] != 1'b1) ? 18'sb100000000000000000 :
              $signed(BodyLSum21_add_temp[17:0])));


  assign BodyLSum22_add_cast = {b_22_out1[18], b_22_out1};
  assign BodyLSum22_add_cast_1 = {BodyLSum21_out1[17], BodyLSum21_out1};
  assign BodyLSum22_add_cast_2 = {BodyLSum22_add_cast_1[18], BodyLSum22_add_cast_1};
  assign BodyLSum22_add_temp = BodyLSum22_add_cast + BodyLSum22_add_cast_2;
  assign BodyLSum22_out1 = ((BodyLSum22_add_temp[19] == 1'b0) && (BodyLSum22_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum22_add_temp[19] == 1'b1) && (BodyLSum22_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum22_add_temp[18:0])));


  assign BodyLSum23_add_cast = {b_23_out1[18], b_23_out1};
  assign BodyLSum23_add_cast_1 = {BodyLSum22_out1[18], BodyLSum22_out1};
  assign BodyLSum23_add_temp = BodyLSum23_add_cast + BodyLSum23_add_cast_1;
  assign BodyLSum23_out1 = ((BodyLSum23_add_temp[19] == 1'b0) && (BodyLSum23_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum23_add_temp[19] == 1'b1) && (BodyLSum23_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum23_add_temp[18:0])));


  assign BodyLSum24_add_cast = {b_24_out1[18], b_24_out1};
  assign BodyLSum24_add_cast_1 = {BodyLSum23_out1[18], BodyLSum23_out1};
  assign BodyLSum24_add_temp = BodyLSum24_add_cast + BodyLSum24_add_cast_1;
  assign BodyLSum24_out1 = ((BodyLSum24_add_temp[19] == 1'b0) && (BodyLSum24_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum24_add_temp[19] == 1'b1) && (BodyLSum24_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum24_add_temp[18:0])));


  assign BodyLSum25_add_cast = {b_25_out1[18], b_25_out1};
  assign BodyLSum25_add_cast_1 = {BodyLSum24_out1[18], BodyLSum24_out1};
  assign BodyLSum25_add_temp = BodyLSum25_add_cast + BodyLSum25_add_cast_1;
  assign BodyLSum25_out1 = ((BodyLSum25_add_temp[19] == 1'b0) && (BodyLSum25_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum25_add_temp[19] == 1'b1) && (BodyLSum25_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum25_add_temp[18:0])));


  assign BodyLSum26_add_cast = {b_26_out1[18], b_26_out1};
  assign BodyLSum26_add_cast_1 = {BodyLSum25_out1[18], BodyLSum25_out1};
  assign BodyLSum26_add_temp = BodyLSum26_add_cast + BodyLSum26_add_cast_1;
  assign BodyLSum26_out1 = ((BodyLSum26_add_temp[19] == 1'b0) && (BodyLSum26_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum26_add_temp[19] == 1'b1) && (BodyLSum26_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum26_add_temp[18:0])));


  assign BodyLSum27_add_cast = {b_27_out1[18], b_27_out1};
  assign BodyLSum27_add_cast_1 = {BodyLSum26_out1[18], BodyLSum26_out1};
  assign BodyLSum27_add_temp = BodyLSum27_add_cast + BodyLSum27_add_cast_1;
  assign BodyLSum27_out1 = ((BodyLSum27_add_temp[19] == 1'b0) && (BodyLSum27_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum27_add_temp[19] == 1'b1) && (BodyLSum27_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum27_add_temp[18:0])));


  assign BodyLSum28_add_cast = {b_28_out1[18], b_28_out1};
  assign BodyLSum28_add_cast_1 = {BodyLSum27_out1[18], BodyLSum27_out1};
  assign BodyLSum28_add_temp = BodyLSum28_add_cast + BodyLSum28_add_cast_1;
  assign BodyLSum28_out1 = ((BodyLSum28_add_temp[19] == 1'b0) && (BodyLSum28_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum28_add_temp[19] == 1'b1) && (BodyLSum28_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum28_add_temp[18:0])));


  assign BodyLSum29_add_cast = {b_29_out1[18], b_29_out1};
  assign BodyLSum29_add_cast_1 = {BodyLSum28_out1[18], BodyLSum28_out1};
  assign BodyLSum29_add_temp = BodyLSum29_add_cast + BodyLSum29_add_cast_1;
  assign BodyLSum29_out1 = ((BodyLSum29_add_temp[19] == 1'b0) && (BodyLSum29_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum29_add_temp[19] == 1'b1) && (BodyLSum29_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum29_add_temp[18:0])));


  assign BodyLSum30_add_cast = {b_30_out1[18], b_30_out1};
  assign BodyLSum30_add_cast_1 = {BodyLSum29_out1[18], BodyLSum29_out1};
  assign BodyLSum30_add_temp = BodyLSum30_add_cast + BodyLSum30_add_cast_1;
  assign BodyLSum30_out1 = ((BodyLSum30_add_temp[19] == 1'b0) && (BodyLSum30_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum30_add_temp[19] == 1'b1) && (BodyLSum30_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum30_add_temp[18:0])));


  assign BodyLSum31_add_cast = {b_31_out1[18], b_31_out1};
  assign BodyLSum31_add_cast_1 = {BodyLSum30_out1[18], BodyLSum30_out1};
  assign BodyLSum31_add_temp = BodyLSum31_add_cast + BodyLSum31_add_cast_1;
  assign BodyLSum31_out1 = ((BodyLSum31_add_temp[19] == 1'b0) && (BodyLSum31_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum31_add_temp[19] == 1'b1) && (BodyLSum31_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum31_add_temp[18:0])));


  assign BodyLSum32_add_cast = {b_32_out1[18], b_32_out1};
  assign BodyLSum32_add_cast_1 = {BodyLSum31_out1[18], BodyLSum31_out1};
  assign BodyLSum32_add_temp = BodyLSum32_add_cast + BodyLSum32_add_cast_1;
  assign BodyLSum32_out1 = ((BodyLSum32_add_temp[19] == 1'b0) && (BodyLSum32_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum32_add_temp[19] == 1'b1) && (BodyLSum32_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum32_add_temp[18:0])));


  always @(posedge clk or posedge reset)
    begin : BodyDelay33_process
      if (reset == 1'b1) begin
        BodyDelay33_out1 <= 10'sb0000000000;
      end
      else begin
        if (enb) begin
          BodyDelay33_out1 <= BodyDelay32_out1;
        end
      end
    end


  assign b_33_mul_temp = 17'sb11111111101111101 * BodyDelay33_out1;
  assign b_33_out1 = ({b_33_mul_temp[26], b_33_mul_temp[26:9]}) + $signed({1'b0, b_33_mul_temp[8]});


  assign BodyLSum33_add_cast = {BodyLSum32_out1[18], BodyLSum32_out1};
  assign BodyLSum33_add_cast_1 = {b_33_out1[18], b_33_out1};
  assign BodyLSum33_add_temp = BodyLSum33_add_cast + BodyLSum33_add_cast_1;
  assign BodyLSum33_cast = ((BodyLSum33_add_temp[19] == 1'b0) && (BodyLSum33_add_temp[18] != 1'b0) ? 19'sb0111111111111111111 :
              ((BodyLSum33_add_temp[19] == 1'b1) && (BodyLSum33_add_temp[18] != 1'b1) ? 19'sb1000000000000000000 :
              $signed(BodyLSum33_add_temp[18:0])));
  assign BodyLSum33_out1 = (((BodyLSum33_cast[18] == 1'b0) && (BodyLSum33_cast[17] != 1'b0)) || ((BodyLSum33_cast[18] == 1'b0) && (BodyLSum33_cast[17:8] == 10'sb0111111111)) ? 10'sb0111111111 :
              ((BodyLSum33_cast[18] == 1'b1) && (BodyLSum33_cast[17] != 1'b1) ? 10'sb1000000000 :
              BodyLSum33_cast[17:8] + $signed({1'b0, BodyLSum33_cast[7]})));


  always@(posedge clk)
  BodyLSum33_out1_1<=BodyLSum33_out1;

  assign output_rsvd = BodyLSum33_out1_1;


endmodule  // filter

