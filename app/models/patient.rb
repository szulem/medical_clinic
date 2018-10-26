# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :visits
  has_many :doctors, through: :visits

  def age_of_patient
    Time.now.year - date_of_birth.year
  end

end
