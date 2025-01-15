module Admin
    class TrainsController < ApplicationController
      def new
        @train = Train.new
        @travel = Travel.new
      end

      def create
        @train = Train.new(
          id: params[:id],
          f0: params[:f0],
          f5: params[:f5],
          hf0: params[:hf0],
          hf5: params[:hf5]
        )

        @travel = Travel.new(
          cod: params[:id],
          part: params[:f0],
          dest: params[:f5],
          hpar: params[:hf0],
          harr: params[:hf5],
          pe: params[:pe],
          pp: params[:pp]
        )

        # Verifica se l'ID esiste già
        if Train.exists?(id: params[:id])
          flash.now[:train_alert] = "Errore: il codice treno già esiste."
          render :new
        elsif params[:f0] == params[:f5]
          flash.now[:train_alert] = "Errore: la fermata di partenza e di arrivo devono essere diverse."
          render :new
        elsif params[:hf0] >= params[:hf5]
          flash.now[:train_alert] = "Errore: l'orario di partenza deve essere precedente a quello di arrivo."
          render :new
        elsif params[:pe].to_f >= params[:pp].to_f
          flash.now[:train_alert] = "Errore: il prezzo Economy deve essere inferiore al prezzo Prima Classe."
          render :new
        else
          if @train.save && @travel.save
            Rails.logger.debug "Train and Travel saved successfully"
            redirect_to admin_dashboard_path, flash: { train_notice: "Treno creato con successo!" }
          else
            Rails.logger.debug "Train save errors: #{@train.errors.full_messages}" if @train.errors.any?
            Rails.logger.debug "Travel save errors: #{@travel.errors.full_messages}" if @travel.errors.any?
            flash.now[:train_alert] = "Errore durante la creazione del Treno"
            render :new
          end
        end
      end
    end
end
