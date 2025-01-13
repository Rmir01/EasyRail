class CreateTravels < ActiveRecord::Migration[8.0]
  def change
    create_table :travels, primary_key: [ :cod, :part, :dest ] do |t|
      t.integer 'cod', null: false   # codice del trenoCompleto associato (references trenoCompleto)
      t.string 'part', null: false   # stazione di partenza
      t.string 'dest', null: false   # destinazione
      t.string 'hpar', null: false   # orario partenza
      t.string 'harr', null: false   # orario arrivo
      t.integer 'pe', null: false    # prezzo classe economy
      t.integer 'pp', null: false    # prezzo prima classe
    end

    add_check_constraint :travels, "pe > 0", name: "min_price_check"

    add_check_constraint :travels, "pp > pe", name: "p_e_price_check"

    add_foreign_key :travels, :trains, column: :cod, primary_key: :id
  end
end
