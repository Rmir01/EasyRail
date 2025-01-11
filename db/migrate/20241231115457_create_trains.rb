class CreateTrains < ActiveRecord::Migration[8.0]
  def change
    create_table :trains, id: false do |t|
      t.integer :id, primary_key: true
      t.string 'f0', null: false
      t.string 'f1'
      t.string 'f2'
      t.string 'f3'
      t.string 'f4'
      t.string 'f5', null: false
      t.string 'hf0', null: false
      t.string 'hf1'
      t.string 'hf2'
      t.string 'hf3'
      t.string 'hf4'
      t.string 'hf5', null: false
    end
  end
end
