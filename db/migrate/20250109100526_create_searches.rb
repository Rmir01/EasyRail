class CreateSearches < ActiveRecord::Migration[8.0]
  def change
    create_table :searches do |t|
      t.string 'departure_station', null: false
      t.string 'arrival_station', null: false
      t.string 'email', null: false
      t.datetime 'created_at', null: false
    end

    add_foreign_key :searches, :users, column: :email, primary_key: :email
  end
end
