class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:success] = "You have created book successfully."
      redirect_to  books_path
    else
      flash.now[:alert] = 'You have created book error.'
      render :new
    end
  end

  def index
    @books = Book.all
    @users = User.all
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.new
  end

  def edit
  end
end
