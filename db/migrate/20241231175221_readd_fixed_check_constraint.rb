class ReaddFixedCheckConstraint < ActiveRecord::Migration[8.0]
  def change
    add_check_constraint :tratta, "pp = pe + 10", name: "price_check"
  end
end
