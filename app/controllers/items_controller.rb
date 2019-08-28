class ItemsController < ApplicationController

def destroy
	@item = Item.find(params[:id])
	if @item.destroy
		redirect_to cards_path
	end
end

def edit
	@item = Item.find(params[:id])
end


def show
end

end
