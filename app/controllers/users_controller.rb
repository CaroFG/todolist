class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if current_user == @user
			if @user.update(first_name: params[:first_name], last_name: params[:last_name])
				redirect_to user_path 
				flash[:success] = "Votre profil a été édité avec succès"
			else 
				flash[:alert] = "Un problème est survenu, veuillez réessayer"
				render :edit
			end
		else
			redirect_to root_path, notice: "Vous n'avez pas accès à ce profil !"
		end	
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to "/"
		flash[:success] = "Votre profil a été supprimé avec succès"
	end
end
