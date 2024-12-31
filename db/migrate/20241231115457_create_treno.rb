class CreateTreno < ActiveRecord::Migration[8.0]
  def change
    create_table :trenos, id:false do |t|
      t.integer :id, primary_key:true
      t.string 'f0'
      t.string 'f1'
      t.string 'f2'
      t.string 'f3'
      t.string 'f4'
      t.string 'f5'
      t.string 'hf0'
      t.string 'hf1'
      t.string 'hf2'
      t.string 'hf3'
      t.string 'hf4'
      t.string 'hf5'
    end
  end
end
