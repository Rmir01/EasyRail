class TravelsController < ApplicationController
  def search
    @travels = Travel.where(part: params[:part], dest: params[:arr])

    if params[:dataAnd] == Date.today.to_s
      current_time = Time.now.in_time_zone("Rome").strftime("%H:%M")
      @travels = @travels.where("hpar > ?", current_time)
    end

    @travels = @travels.order(:hpar)
  end

  def return
    andata = Travel.find_by(
      cod: params[:cod],
      part: params[:part],
      dest: params[:dest]
    )

    if andata.nil?
      redirect_to root_path, alert: "Viaggio di andata non trovato."
      return
    end

    @andata_cod = andata.cod
    @andata_part = andata.part
    @andata_hpar = andata.hpar
    @andata_dest = andata.dest
    @andata_harr = andata.harr
    @andata_pe = andata.pe
    @andata_pp = andata.pp

    if params[:dataRit] == params[:dataAnd]
      @travels = Travel.where(part: andata.dest, dest: andata.part)
                       .where("hpar > ?", andata.harr)
                       .order(:hpar)
    else
      @travels = Travel.where(part: andata.dest, dest: andata.part)
                       .order(:hpar)
    end
  end

  def payment
    andata = Travel.find_by(
      cod: params[:andata_cod],
      part: params[:andata_part],
      dest: params[:andata_dest]
    )
    @andata_cod = andata.cod
    @andata_part = andata.part
    @andata_hpar = andata.hpar
    @andata_dest = andata.dest
    @andata_harr = andata.harr
    @andata_pe = andata.pe
    @andata_pp = andata.pp

    ritorno = nil
    if params[:ritorno_cod].present? && params[:ritorno_part].present? && params[:ritorno_dest].present?
      ritorno = Travel.find_by(
        cod: params[:ritorno_cod],
        part: params[:ritorno_part],
        dest: params[:ritorno_dest]
      )
      @ritorno_cod = ritorno.cod
      @ritorno_part = ritorno.part
      @ritorno_hpar = ritorno.hpar
      @ritorno_dest = ritorno.dest
      @ritorno_harr = ritorno.harr
      @ritorno_pe = ritorno.pe
      @ritorno_pp = ritorno.pp
    end
  end

  def confirmed_purchase
    # Generazione PNR unico
    pnr = generate_unique_pnr

    # Creazione del biglietto
    Ticket.create!(
      pnr: pnr,
      uemail: current_user.email,
      date: Date.parse(params[:dataAnd]),
      dpt_station: params[:dpt_station],
      dpt_time: params[:dpt_time],
      arv_station: params[:arv_station],
      arv_time: params[:arv_time],
      psg_count: params[:psg_count].to_i,
      price: params[:price].to_i
    )

    # Reindirizzamento alla schermata di conferma
    redirect_to travels_confirm_path(pnr: pnr)
  end

  def confirm
    @pnr = params[:pnr]
  end

  private

  def generate_unique_pnr
    loop do
      pnr = SecureRandom.alphanumeric(6).upcase
      break pnr unless Ticket.exists?(pnr: pnr)
    end
  end
end
