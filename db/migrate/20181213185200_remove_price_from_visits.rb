class RemovePriceFromVisits < ActiveRecord::Migration[5.2]
  def change
    remove_column :visits, :price, :decimal
  end
end
