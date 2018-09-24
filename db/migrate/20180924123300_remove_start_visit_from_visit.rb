class RemoveStartVisitFromVisit < ActiveRecord::Migration[5.2]
  def change
    remove_column :visits, :start_visit, :date
  end
end
