`timescale 1 ns / 1 ns

module filter_tb;



  reg  clk;
  reg  reset;
  wire clk_enable;
  wire output_rsvd_done;  // ufix1
  wire rdEnb;
  wire output_rsvd_done_enb;  // ufix1
  reg [10:0] output_rsvd_addr;  // ufix11
  wire output_rsvd_active;  // ufix1
  reg [10:0] Signal_From_Workspace_out1_addr;  // ufix11
  wire Signal_From_Workspace_out1_active;  // ufix1
  reg  tb_enb_delay;
  wire Signal_From_Workspace_out1_enb;  // ufix1
  wire [10:0] Signal_From_Workspace_out1_addr_delay_1;  // ufix11
  reg signed [31:0] fp_input_rsvd;  // sfix32
  reg signed [9:0] rawData_input_rsvd;  // sfix10_En3
  reg signed [31:0] status_input_rsvd;  // sfix32
  reg signed [9:0] holdData_input_rsvd;  // sfix10_En3
  reg signed [9:0] input_rsvd_offset;  // sfix10_En3
  wire signed [9:0] input_rsvd;  // sfix10_En3
  reg  check1_done;  // ufix1
  wire snkDonen;
  wire resetn;
  wire tb_enb;
  wire signed [9:0] output_rsvd;  // sfix10_En3
  wire output_rsvd_enb;  // ufix1
  wire output_rsvd_lastAddr;  // ufix1
  wire [10:0] output_rsvd_addr_delay_1;  // ufix11
  reg signed [31:0] fp_output_rsvd_expected;  // sfix32
  reg signed [9:0] output_rsvd_expected;  // sfix10_En3
  reg signed [9:0] output_rsvd_expected1;  // sfix10_En3
  reg signed [31:0] status_output_rsvd_expected;  // sfix32
  reg signed [9:0] output_rsvd_ref;  // sfix10_En3
  reg  output_rsvd_testFailure;  // ufix1
  wire testFailure;  // ufix1


  assign output_rsvd_done_enb = output_rsvd_done & rdEnb;



  assign output_rsvd_active = output_rsvd_addr != 11'b11111010000;



  assign Signal_From_Workspace_out1_active = Signal_From_Workspace_out1_addr != 11'b11111010000;



  assign Signal_From_Workspace_out1_enb = Signal_From_Workspace_out1_active & (rdEnb & tb_enb_delay);



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 2000
  always @(posedge clk or posedge reset)
    begin : SignalFromWorkspace_process
      if (reset == 1'b1) begin
        Signal_From_Workspace_out1_addr <= 11'b00000000000;
      end
      else begin
        if (Signal_From_Workspace_out1_enb) begin
          if (Signal_From_Workspace_out1_addr >= 11'b11111010000) begin
            Signal_From_Workspace_out1_addr <= 11'b00000000000;
          end
          else begin
            Signal_From_Workspace_out1_addr <= Signal_From_Workspace_out1_addr + 11'b00000000001;
          end
        end
      end
    end



  assign #1 Signal_From_Workspace_out1_addr_delay_1 = Signal_From_Workspace_out1_addr;

  // Data source for input_rsvd
  initial
    begin : input_rsvd_fileread
      fp_input_rsvd = $fopen("input_rsvd.dat", "r");
      status_input_rsvd = $rewind(fp_input_rsvd);
    end

  always @(Signal_From_Workspace_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_input_rsvd <= 10'bx;
      end
      else if (rdEnb == 1) begin
        status_input_rsvd = $fscanf(fp_input_rsvd, "%h", rawData_input_rsvd);
      end
    end

  // holdData reg for Signal_From_Workspace_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Signal_From_Workspace_out1
      if (reset) begin
        holdData_input_rsvd <= 10'bx;
      end
      else begin
        holdData_input_rsvd <= rawData_input_rsvd;
      end
    end

  always @(rawData_input_rsvd or rdEnb)
    begin : stimuli_Signal_From_Workspace_out1_1
      if (rdEnb == 1'b0) begin
        input_rsvd_offset <= holdData_input_rsvd;
      end
      else begin
        input_rsvd_offset <= rawData_input_rsvd;
      end
    end

  assign #2 input_rsvd = input_rsvd_offset;

  assign snkDonen =  ~ check1_done;



  assign resetn =  ~ reset;



  assign tb_enb = resetn & snkDonen;



  // Delay inside enable generation: register depth 1
  always @(posedge clk or posedge reset)
    begin : u_enable_delay
      if (reset) begin
        tb_enb_delay <= 0;
      end
      else begin
        tb_enb_delay <= tb_enb;
      end
    end

  assign rdEnb = (check1_done == 1'b0 ? tb_enb_delay :
              1'b0);



  assign #2 clk_enable = rdEnb;

  initial
    begin : reset_x_gen
      reset <= 1'b1;
      # (20);
      @ (posedge clk)
      # (2);
      reset <= 1'b0;
    end

  always 
    begin : clk_gen
      clk <= 1'b1;
      # (5);
      clk <= 1'b0;
      # (5);
      if (check1_done == 1'b1) begin
        clk <= 1'b1;
        # (5);
        clk <= 1'b0;
        # (5);
        $stop;
      end
    end

  filter u_filter (.clk(clk),
                   .reset(reset),
                   .clk_enable(clk_enable),
                   .input_rsvd(input_rsvd),  // sfix10_En3
                   .output_rsvd(output_rsvd)  // sfix10_En3
                   );

  assign output_rsvd_enb = clk_enable & output_rsvd_active;



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 2000
  always @(posedge clk or posedge reset)
    begin : c_2_process
      if (reset == 1'b1) begin
        output_rsvd_addr <= 11'b00000000000;
      end
      else begin
        if (output_rsvd_enb) begin
          if (output_rsvd_addr >= 11'b11111010000) begin
            output_rsvd_addr <= 11'b00000000000;
          end
          else begin
            output_rsvd_addr <= output_rsvd_addr + 11'b00000000001;
          end
        end
      end
    end



  assign output_rsvd_lastAddr = output_rsvd_addr >= 11'b11111010000;



  assign output_rsvd_done = output_rsvd_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_1
      if (reset) begin
        check1_done <= 0;
      end
      else begin
        if (output_rsvd_done_enb) begin
          check1_done <= output_rsvd_done;
        end
      end
    end

  assign #1 output_rsvd_addr_delay_1 = output_rsvd_addr;

  // Data source for output_rsvd_expected
  initial
    begin : output_rsvd_expected_fileread
      fp_output_rsvd_expected = $fopen("output_rsvd_expected.dat", "r");
      status_output_rsvd_expected = $rewind(fp_output_rsvd_expected);
    end

  always @(output_rsvd_addr_delay_1, clk_enable, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        output_rsvd_expected <= 10'bx;
      end
	else if (clk_enable == 1) begin
        status_output_rsvd_expected = $fscanf(fp_output_rsvd_expected, "%h", output_rsvd_expected);
      end
    end

  always @(posedge clk)
    output_rsvd_ref  <= output_rsvd_expected;

  always @(posedge clk or posedge reset)
    begin : output_rsvd_checker
      if (reset == 1'b1) begin
        output_rsvd_testFailure <= 1'b0;
      end
      else begin
	if (clk_enable == 1'b1 && output_rsvd !== output_rsvd_ref) begin
          output_rsvd_testFailure <= 1'b1;
          $display("ERROR in output_rsvd at time %t : Expected '%h' Actual '%h'", $time, output_rsvd_ref, output_rsvd);
        end
      end
    end

  assign testFailure = output_rsvd_testFailure;

  always @(posedge clk)
    begin : completed_msg
      if (check1_done == 1'b1) begin
        if (testFailure == 1'b0) begin
          $display("**************TEST COMPLETED (PASSED)**************");
        end
        else begin
          $display("**************TEST COMPLETED (FAILED)**************");
        end
      end
    end

endmodule  // filter_tb

