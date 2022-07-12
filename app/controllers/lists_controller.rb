class ListsController < ApplicationController
  def new
    @book=Book.new
  end

  def index
    @Books=Book.all
  end

  def show
  end

  def edit
    @book = Books.find(params[:id])
  end

   def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
   end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
