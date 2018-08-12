class RMoneysController < ApplicationController
	before_action :set_transaction, only: [:payout]


	def search_pickups
		@trans = Transaction.all
	end

	def payout
		
	end

	private

		def set_sender
	      @trans = Transaction.find(params[:id])
	    end


end
