class DashboardController < ApplicationController

  def index
    @teachers_pills = Teacher.all
    @klasses_pills = Klass.all

    if params.has_key?(:teacher)
      @klasses = Teacher.find(params[:teacher]).klasses
    elsif params.has_key?(:class)
      @klasses =  Klass.where(:id => params[:class])
    else
      @klasses = Klass.all
    end
  end

end
