class KlassesController < ApplicationController

  def index
    @klasses = Klass.all
  end

  def show
    @klass = Klass.find(params[:id])
  end

  def new
    @klass = Klass.new
    @klass.schedules.build
  end

  def edit
    @klass = Klass.find(params[:id])
  end

  def create
    @klass = Klass.new(params[:klass])
    if @klass.save
      redirect_to @klass, :notice => 'Class was succesfully created'
    else
      render :action => 'new'
    end
  end

  def update
    @klass = Klass.find(params[:id])
    if @klass.update_attributes(params[:klass])
      redirect_to @klass, :notice => 'Class was succesfully updated'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @klass = Klass.find(params[:id])
    @klass.destroy
    redirect_to klasses_url
  end

end
