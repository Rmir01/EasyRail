class TrainStatusController < ApplicationController
  def index
  end

  def show
    @train = Train.find_by(id: params[:code])

    if @train.nil?
    # Treno non trovato
    flash.now[:alert] = "Treno non trovato. Inserisci un altro codice."
    render :index # Torna alla vista index con il form
    end
  end
end
