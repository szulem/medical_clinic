# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :visits
  has_many :doctors, through: :visits

  has_attached_file :avatar_patient, styles: { medium: "300x300>", thumb: "140x140>" }, default_url: "/images/:style/avatar.gif"
  validates_attachment_content_type :avatar_patient, content_type: /\Aimage\/.*\z/

  def age_of_patient
    Time.now.year - date_of_birth.year
  end

end
