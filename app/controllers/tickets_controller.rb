class TicketsController < ApplicationController
  before_action :get_ticket, only: [ :destroy, :edit_time, :update_time ]

  def get_ticket
    @ticket = Ticket.find_by(pnr: params[:pnr])
  end

  def destroy
    @ticket.destroy
    redirect_to user_profile_path, notice: "Biglietto cancellato con successo."
  end

  def edit_time
    if @ticket.date == Date.current
      @available_travels = Travel.where(part: @ticket.part, dest: @ticket.dest)
                               .where("hpar > ?", Time.now.in_time_zone("Rome").strftime("%H:%M"))
    else
      @available_travels = Travel.where(part: @ticket.part, dest: @ticket.dest)
    end
    @available_travels = @available_travels.order(:hpar)
  end

  def update_time
      @ticket.update!(hpar: params[:hpar], harr: params[:harr])
      redirect_to user_profile_path, notice: "Orario modificato con successo!"
  end
end
