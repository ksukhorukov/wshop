# frozen_string_literal: true

class Admin::StatisticsController < Admin::AdministrationController
  def index
    @purchases = Purchase.all
  end
end
