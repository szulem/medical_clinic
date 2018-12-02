# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @visits = Visit.all.order('start_visit ASC')
  end

  def contact; end
end
