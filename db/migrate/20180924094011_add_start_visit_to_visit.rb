class AddStartVisitToVisit < ActiveRecord::Migration[5.2]
  def change
    add_column :visits, :start_visit, :date
  end
end
