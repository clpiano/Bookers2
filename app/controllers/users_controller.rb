class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end
 
 #わからない 
  def index
    @user = User.all
    @books = @user.name
  end  
end