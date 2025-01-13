module Admin
    class TicketsController < ApplicationController
      before_action :authenticate_user!
      before_action :authorize_admin!

      def index
        @tickets = Ticket.select(:cod, :email, :pnr, :part, :hpar, :dest, :harr, :date).order(:date, :hpar)
      end
    end
end
