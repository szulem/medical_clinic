# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def visit_length
    ((end_visit - start_visit) / 3600).round(2)
  end

end