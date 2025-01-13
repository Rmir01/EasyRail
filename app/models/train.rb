class Train < ActiveRecord::Base
  self.table_name = "trains"
  has_many :travels, foreign_key: "id", primary_key: "cod"
end
