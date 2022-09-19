class UsersController < ApplicationController

  def show
    
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end

  def index
    @user = User.all
    @books = @user.name
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_images)
  end
end
