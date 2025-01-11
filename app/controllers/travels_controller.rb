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
    @andata_dest = andata.dest
    @andata_hpar = andata.hpar
    @andata_harr = andata.harr

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
      cod: (params[:andata_cod]).to_i,
      part: params[:andata_part],
      dest: params[:andata_dest]
    )
    @andata_cod = andata.cod
    @andata_part = andata.part
    @andata_dest = andata.dest
    @andata_hpar = andata.hpar
    @andata_harr = andata.harr

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
    end
  end

  def confirmed_purchase

    # Creazione biglietto andata
    andata = Travel.find_by(
      cod: params[:andata_cod],
      part: params[:andata_part],
      dest: params[:andata_dest]
    )
    pnra = generate_unique_pnr
    @andata_cod = andata.cod
    @andata_part = andata.part
    @andata_hpar = andata.hpar
    @andata_dest = andata.dest
    @andata_harr = andata.harr

    Ticket.create!(
      pnr: pnra,
      email: current_user.email,
      cod: andata.cod,
      part: andata.part,
      dest: andata.dest,
      hpar: andata.hpar,
      harr: andata.harr,
      date: Date.parse(params[:dataAnd]),
      pass: params[:pass].to_i,
      price: params[:prezzoAnd].to_i
    )

    # Creazione biglietto ritorno
    ritorno = Travel.find_by(
      cod: params[:ritorno_cod],
      part: params[:ritorno_part],
      dest: params[:ritorno_dest]
      )
    if ritorno
      pnrr = generate_unique_pnr
      @ritorno_cod = ritorno.cod
      @ritorno_part = ritorno.part
      @ritorno_hpar = ritorno.hpar
      @ritorno_dest = ritorno.dest
      @ritorno_harr = ritorno.harr
      Ticket.create!(
        pnr: pnrr,
        email: current_user.email,
        cod: ritorno.cod,
        part: ritorno.part,
        dest: ritorno.dest,
        hpar: ritorno.hpar,
        harr: ritorno.harr,
        date: Date.parse(params[:dataRit]),
        pass: params[:pass].to_i,
        price: params[:prezzoRit].to_i
      )
    end

    # Reindirizzamento schermata di conferma coi PNR generati
    redirect_to travels_confirm_path(pnra: pnra, pnrr: pnrr)
  end

  def confirm
    @pnra = params[:pnra]
    @pnrr = params[:pnrr]
  end

  private

  def generate_unique_pnr
    loop do
      pnr = SecureRandom.alphanumeric(6).upcase
      break pnr unless Ticket.exists?(pnr: pnr)
    end
  end
end
