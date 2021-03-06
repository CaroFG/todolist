class ItemsController < ApplicationController

def new
	@item = Item.new
end


def sort
	params[:item].each_with_index do |id, index|
		Item.where(id: id).update_all(position: index + 1)
	end
	head :ok
end


def create
	@item = Item.create!(card_id: params[:card_id], name: params[:name])

	if @item.save
		redirect_to cards_path
	else
		redirect_to root_path
		puts @item.errors
	end
end

def destroy
	@item = Item.find(params[:id])
	if @item.destroy
		redirect_to cards_path
	end
end

def edit
	@item = Item.find(params[:id])
end

def update 
	@item = Item.find(params[:id])

		if @item.checked == false
			@item.update(checked: true)
		else 
			@item.update(checked: false)
		end

		
end

def update_number_two
	@item = Item.find(params[:id])
	@item.update(name: params[:name])
	
end

def show
end

end
