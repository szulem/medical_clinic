# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def name_surname
    name + " " + surname
  end
  
end
