# frozen_string_literal: true

class Doctor < ApplicationRecord
  has_many :visits
  has_many :patients, through: :visits

  validates :name, presence: { message: "Name should have min. 2 characters!" }, length: { minimum: 2, maximum: 30 }
  validates :surname, presence: { message: "Surname should have min. 2 characters!" }, length: { minimum: 2, maximum: 30 }

end
