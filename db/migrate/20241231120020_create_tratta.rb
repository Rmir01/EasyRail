class CreateTratta < ActiveRecord::Migration[8.0]
  def change
    create_table :tratta, primary_key: [:cod, :part, :dest] do |t|
      t.integer 'cod'   #codice del trenoCompleto associato (references trenoCompleto) 
      t.string 'part'   #stazione di partenza
      t.string 'dest'   #destinazione
      t.string 'hpar'   #orario partenza
      t.string 'harr'   #orario arrivo
      t.integer 'pe'    #prezzo classe economy
      t.integer 'pp'    #prezzo prima classe
    end

    add_check_constraint :tratta, "pe > 0", name: "min_price_check"

    add_check_constraint :tratta, "pp = pe + 10", name: "p_e_price_check"
    
    add_foreign_key :tratta, :treno, column: :cod, primary_key: :id
    #FOREIGN KEY (codice) REFERENCES trenoCompleto(codice)
  end
end
