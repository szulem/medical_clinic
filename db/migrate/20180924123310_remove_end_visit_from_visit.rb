class RemoveEndVisitFromVisit < ActiveRecord::Migration[5.2]
  def change
    remove_column :visits, :end_visit, :date
  end
end
