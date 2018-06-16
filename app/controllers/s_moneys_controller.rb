class SMoneysController < ApplicationController
	before_action :set_smoney, only: [:new_sender_conf, :show_transaction]

	def sender_index
		@senders = Sender.all
	end

	def new_sender
		@sender = Sender.new
		@countries = Country.all
	end

	def new_sender_conf
	end

	def show_transaction
	end

	def create
		@sender = Sender.new(sender_params)

	    respond_to do |format|
	      if @sender.save
	        format.html { redirect_to @sender, notice: 'Transaction was successfully created.' }
	        format.json { render :show, status: :created, location: @sender }
	      else
	        format.html { render :new }
	        format.json { render json: @sender.errors, status: :unprocessable_entity }
	      end
    end

	end

	private
	def set_smoney
      @sender = Sender.find(params[:id])
    end

	def sender_params
		params.require(:sender).permit(:f_name, :m_name, :l_name, :pat_name, :mat_name, :phone_number, :email, :address, :address_zip, :address_state, :recipients, :id_type, :lic_number, :pass_number, :gov_number, :id_dob, :lic_state, :pass_country, :gov_country )
	end



end
