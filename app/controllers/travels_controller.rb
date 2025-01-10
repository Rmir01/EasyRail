class TravelsController < ApplicationController
  def search
    @travels = Travel.where(part: params[:part], dest: params[:arr])

    if params[:dataAnd] == Date.today.to_s
      current_time = Time.current.strftime("%H:%M")
      @travels = @travels.where("hpar > ?", current_time)
    end

    @travels = @travels.order(:hpar)
  end
end
