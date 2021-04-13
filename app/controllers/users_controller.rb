class UsersController < ApplicationController

  #def index
  #end 

  def show
    @user = User.find(params[:id]) 
    @patients = @user.patients.order(:name)
  end
end
