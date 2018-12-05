# frozen_string_literal: true

class Doctor < ApplicationRecord
  before_create :titleize_doctor

  has_many :visits
  has_many :patients, through: :visits

  validates :name, presence: { message: "Name should have min. 2 characters!" }, length: { minimum: 2, maximum: 30 }
  validates :surname, presence: { message: "Surname should have min. 2 characters!" }, length: { minimum: 2, maximum: 30 }

  private

  def titleize_doctor
    self.name = self.name.to_s.titleize
    self.surname = self.surname.to_s.titleize
  end

end
