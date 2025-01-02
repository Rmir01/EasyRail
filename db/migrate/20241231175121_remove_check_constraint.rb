class RemoveCheckConstraint < ActiveRecord::Migration[8.0]
  def change
    remove_check_constraint :tratta, name: "price_check", if_exists: true
  end
end
