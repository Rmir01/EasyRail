class CreateSearches < ActiveRecord::Migration[8.0]
  def change
    create_table :searches do |t|
      t.string 'departure_station'
      t.string 'arrival_station'
      t.string 'email'
      t.datetime 'created_at'
    end

    add_foreign_key :searches, :users, column: :email, primary_key: :email
  
  end
end
