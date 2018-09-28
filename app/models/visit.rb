# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def visit_length
    ((end_visit - start_visit) / 3600).round(2)
  end

  def visit_cost
    (visit_length * doctor.salary_per_hour).round(2)
  end
end
