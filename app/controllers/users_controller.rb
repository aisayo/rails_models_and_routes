class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save # either true/false
      redirect_to user_path(@user) #/users/:id
    else 
      render :new
      # binding.pry
    end 
  end


  # def update
  #   @user = User.find(params[:id])
  #   if @user.update(params)
  #     redirect_to path 
  #   else 
  #     render :edit
  #   end 
  # end 


private 

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end 

end
