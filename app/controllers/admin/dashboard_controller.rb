module Admin
    class DashboardController < ApplicationController
      before_action :authenticate_user! # Autenticazione Devise
      before_action :authorize_admin!

      def index
        # Eventuali logiche per recuperare i dati da mostrare
      end
    end
end
