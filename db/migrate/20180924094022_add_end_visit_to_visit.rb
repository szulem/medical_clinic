class AddEndVisitToVisit < ActiveRecord::Migration[5.2]
  def change
    add_column :visits, :end_visit, :date
  end
end
