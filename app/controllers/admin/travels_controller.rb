module Admin
    class TravelsController < ApplicationController
      before_action :authenticate_user!
      before_action :authorize_admin!
  
      def search
      end
  
      def results
        @travels = Travel.where(part: params[:part], dest: params[:arr]).order(:hpar)
      end
    end
  end
