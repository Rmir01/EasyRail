class CreateTickets < ActiveRecord::Migration[8.0]
  def change
    create_table :tickets, primary_key: [ :pnr ] do |t|
      t.string 'pnr', null: false
      t.string 'email', null: false
      t.integer 'cod', null: false
      t.string 'part', null: false
      t.string 'dest', null: false
      t.time 'hpar', null: false
      t.time 'harr', null: false
      t.date 'date', null: false
      t.integer 'pass', null: false
      t.integer 'price', null: false
    end

    add_foreign_key :tickets, :users, column: :email, primary_key: :email

    add_foreign_key :tickets, :travels, column: [ :cod, :part, :dest ], primary_key: [ :cod, :part, :dest ]
  end
end
