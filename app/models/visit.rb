# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
end
