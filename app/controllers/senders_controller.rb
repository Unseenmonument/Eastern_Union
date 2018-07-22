class SendersController < ApplicationController
  before_action :set_sender, only: [:show, :edit, :update, :destroy]

  # GET /senders
  # GET /senders.json
  def index
    @senders = Sender.all
  end

  # GET /senders/1
  # GET /senders/1.json
  def show
    @trans = Transaction.all
  end

  # GET /senders/new
  def new
    @countries = Country.all
    @sender = Sender.new
    @trans = Transaction.new
  end

  # GET /senders/1/edit
  def edit
  end

  # POST /senders
  # POST /senders.json
  def create
    @sender = Sender.new(sender_params)

    num0 = rand(0...10).to_s
    num1 = rand(0...10).to_s
    num2 = rand(0...10).to_s
    num3 = rand(0...10).to_s
    num4 = rand(0...10).to_s
    num5 = rand(0...10).to_s
    num6 = rand(0...10).to_s
    num7 = rand(0...10).to_s
    num8 = rand(0...10).to_s
    num9 = rand(0...10).to_s

    if @sender.create_account == true
      @cus_num = num0 + num1 + num2 + num3 + num4 + num5
    else
      @cus_num = nil
    end

    @mtcn_num = num0 + num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8 + num9

    @sender.customer_number = @cus_num
    @sender.mtcn = @mtcn_num

    @trans = Transaction.new
    @trans.mtcn = @sender.mtcn
    @trans.sender_f_name = @sender.f_name
    @trans.sender_m_name = @sender.m_name
    @trans.sender_l_name = @sender.l_name + @sender.pat_name + @sender.mat_name
    @trans.expected_f_name = @sender.reciever_f_name
    @trans.expected_m_name = @sender.reciever_m_name
    @trans.expected_l_name = @sender.reciever_l_name + @sender.reciever_pat_name + @sender.reciever_mat_name
    @trans.test_quest_answer = @sender.test_answer
    @trans.test_question = @sender.test_question
    @trans.payout_amount = @sender.conversion_amount

    @trans.save

    respond_to do |format|
      if @sender.save
        format.html { redirect_to @sender, notice: 'Sender was successfully created.' }
        format.json { render :show, status: :created, location: @sender }
      else
        format.html { render :new }
        format.json { render json: @sender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /senders/1
  # PATCH/PUT /senders/1.json
  def update
    respond_to do |format|
      if @sender.update(sender_params)
        format.html { redirect_to @sender, notice: 'Sender was successfully updated.' }
        format.json { render :show, status: :ok, location: @sender }
      else
        format.html { render :edit }
        format.json { render json: @sender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senders/1
  # DELETE /senders/1.json
  def destroy
    @sender.destroy
    respond_to do |format|
      format.html { redirect_to senders_url, notice: 'Sender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sender
      @sender = Sender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sender_params
      params.require(:sender).permit(:f_name, :m_name, :l_name, :pat_name, :mat_name, 
        :phone_number, :create_account, :email, :address, :address_zip, :address_state, :recipients, :id_type, 
        :lic_number, :pass_number, :gov_number, :id_dob, :lic_state, :pass_nation, :gov_nation, 
        :send_amount, :final_amount, :sendforself, :payout_nation, :payout_state, :reciever_f_name, 
        :reciever_m_name, :reciever_l_name, :reciever_pat_name, :reciever_mat_name,:test_answer, :test_question, :test_answer,
        :customer_number, :mtcn, :send_date, :payout_date, :conversion_amount)
    end

    def trans_params
      params.require(:transaction).permit(:mtcn, :sender_f_name, :sender_m_name, :sender_l_name, 
        :reciever_f_name, :reciever_m_name, :reciever_l_name, :rec_address, :rec_phone, 
        :rec_zip, :rec_state, :rec_id_type, :rec_pass_num, :rec_pass_dob, :rec_pas_country, 
        :rec_lic_num, :rec_lic_state, :rec_lic_dob, :rec_govid_num, :rec_govid_country, 
        :rec_govid_dob, :reciever_city, :test_quest_answer, :second_id, :second_id_type, 
        :idtwo_pass_country, :idtwo_pass_num, :idtwo_pass_dob, :idtwo_lic_state, 
        :idtwo_lic_dob_, :idtwo_lic_num, :idtwo_gov_country, :idtwo_gov_num, 
        :idtwo_gov_dob, :trans_paid, :test_quest_answer, :payout_amount)
    end


end
