class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  def update
    @book = Book.find(params[:id])
    @book.user_id = current_user.id
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def index
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end
