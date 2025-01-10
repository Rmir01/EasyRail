# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users, id:false do |t|
      
      t.string :name, null: false, default: ""
      t.string :surname, null: false, default: ""
      t.string :email, primary_key:true, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :provider, null: false, default: ""
      t.string :uid, null: false, default: ""

    end
  end
end
