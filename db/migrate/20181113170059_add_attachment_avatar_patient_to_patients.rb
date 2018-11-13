class AddAttachmentAvatarPatientToPatients < ActiveRecord::Migration[5.2]
  def self.up
    change_table :patients do |t|
      t.attachment :avatar_patient
    end
  end

  def self.down
    remove_attachment :patients, :avatar_patient
  end
end
