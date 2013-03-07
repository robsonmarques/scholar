class DashboardController < ApplicationController

  def index
    @klasses = Klass.all
  end

end
