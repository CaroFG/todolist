class CardsController < ApplicationController
	
	def index
		@cards = current_user.cards
	end

	def new
		@card = Card.new
	end

	def create
		@card = Card.create!(user_id: current_user.id, title: params[:title])

		if @card.save
			redirect_to cards_path
		else
			redirect_to root_path
			puts @card.errors
		end
	end

	def show
		@card = Card.find(params[:id])
	end
	
	def edit
	end
	
	def update
	end

	def destroy
		@card = Card.find(params[:id])
		if @card.destroy
			redirect_to cards_path
		end
	end
end
