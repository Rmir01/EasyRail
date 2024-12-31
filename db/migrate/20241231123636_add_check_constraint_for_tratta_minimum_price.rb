class AddCheckConstraintForTrattaMinimumPrice < ActiveRecord::Migration[8.0]
  def change
    add_check_constraint :tratta, "pe > 0", name: "minimum_price_check"
  end
end
