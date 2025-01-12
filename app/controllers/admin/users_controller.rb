module Admin
    class UsersController < ApplicationController
      before_action :authenticate_user!
      before_action :authorize_admin!
  
      def index
        @users = User.where(admin: false).select(:email, :name, :surname, :provider).order(:surname)

      end
    end
  end
