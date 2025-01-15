module Admin
  class TravelsController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!
    before_action :set_travel, only: [ :edit_price, :update_price ]

    # GET /admin/travels/search
    def search
    end

    # POST /admin/travels/results
    def results
      @travels = Travel.where(part: params[:part], dest: params[:arr]).order(:hpar)
    end

    # GET /admin/travels/:cod/:part/:dest/edit_price
    def edit_price
      @type = params[:type]
    end

    # PATCH /admin/travels/:cod/:part/:dest/update_price
    def update_price
      attribute = params[:type] == "economy" ? :pe : :pp
      if @travel.update(attribute => params[:new_price])
        redirect_to search_admin_travels_path, flash: { travel_notice: "Prezzo aggiornato con successo!" }
      else
        flash.now[:travel_alert] = "Errore durante l'aggiornamento del prezzo."
        render :edit_price
      end
    end


    private

    # Trova il viaggio in base alla chiave composta
    def set_travel
      @travel = Travel.find_by(cod: params[:cod], part: params[:part], dest: params[:dest])
      redirect_to search_admin_travels_path, alert: "Tratta non trovata." unless @travel
    end
  end
end
