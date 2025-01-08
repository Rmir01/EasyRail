class UsersController < ApplicationController
	before_action :authenticate_user!
  
	def profile
	  @user = current_user
	end
  
	def edit
	  @user = current_user
	end
  
	def update
	  @user = current_user
	  if @user.update(user_params)
		redirect_to user_profile_path, notice: 'I tuoi dati sono stati aggiornati con successo.'
	  else
		flash.now[:alert] = 'Errore durante l’aggiornamento dei dati.'
		render :edit
	  end
	end
  
	private
  
	def user_params
	  params.require(:user).permit(:name, :surname, :password, :password_confirmation)
	end
end
  