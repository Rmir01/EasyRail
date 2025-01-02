class CreateUtente < ActiveRecord::Migration[8.0]
  def change
    create_table :utente, id:false do |t|
      t.string 'email', primary_key: true
      t.string 'password'
      t.string 'nome'
      t.string 'cognome'
    end
  end
end
