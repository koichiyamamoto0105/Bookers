class BooksController < ApplicationController
  def home
  end

  def index
    @books =Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book =Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
