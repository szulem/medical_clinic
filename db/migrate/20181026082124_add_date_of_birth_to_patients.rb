class AddDateOfBirthToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :date_of_birth, :date
  end
end
