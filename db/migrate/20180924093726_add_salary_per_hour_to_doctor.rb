class AddSalaryPerHourToDoctor < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :salary_per_hour, :integer
  end
end
