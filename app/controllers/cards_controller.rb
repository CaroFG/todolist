class CardsController < ApplicationController
	
	def index
		@cards = current_user.cards
	end

	def new
		@card = Card.new
	end

	def create
	end

	def show
		@card = Card.find(params[:id])
	end
	
	def edit
	end
	
	def update
	end

	def destroy
	end
end
