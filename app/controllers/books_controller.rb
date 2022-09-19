class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
   # @book.user_id = current_user.id
    @book.save
    redirect_to "/books/#{@book.id}" #book_path(@book.id)
    #違うかも
  end

  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
    @book = Book.new #いる？
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :profile_image)
  end
end
