class DojosController < ApplicationController
  def new
    render 'dojos/new'
  end
  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.valid?
      @dojo.save
      redirect_to '/show'
    elsif redirect_to ''
    end
  end
  
  def show    
    @count = Dojo.all.count
    @dojos = Dojo.all.order! 'created_at DESC'
    render 'dojos/show'
  end
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
