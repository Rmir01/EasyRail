class SearchesController < ApplicationController
  before_action :authenticate_user!
  def create
    user = current_user

    # Verifica se esiste già una ricerca uguale per l'utente
    existing_search = user.searches.find_by(departure_station: params[:part], arrival_station: params[:arr])

    # Se non esiste, crea una nuova ricerca
    if existing_search.nil?

    # Mantieni solo le ultime 3 ricerche senza doppioni
    if user.searches.count >= 3
      # Elimina la ricerca più vecchia
      user.searches.order(:created_at).first.destroy
    end

    # Crea la nuova ricerca
    user.searches.create(departure_station: params[:part], arrival_station: params[:arr])
    end
  end
end
