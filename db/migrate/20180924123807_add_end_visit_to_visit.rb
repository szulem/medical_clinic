# frozen_string_literal: true

class AddEndVisitToVisit < ActiveRecord::Migration[5.2]
  def change
    add_column :visits, :end_visit, :datetime
  end
end
