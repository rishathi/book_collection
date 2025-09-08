class BooksController < ApplicationController
  def index
    @books = Book.order(:id) # get all the book records from the database, sorted by title
  end

  def show
    @book = Book.find(params[:id]) # get the book record with the id from the URL
  end

  def new
    @book = Book.new # create a new, empty book object
  end

  def create
    @book = Book.new(params.require(:book).permit(:title)) # create a new book object with the title from the form
    if @book.save
      flash[:notice] = "Book added successfully."
      redirect_to books_path
    else
      render('new') # renders the new template; assign any instance variables needed by the new template
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title))
      flash[:notice] = "Book updated successfully."
      redirect_to books_path
    else
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book '#{@book.title}' deleted successfully."
    redirect_to books_path
  end
end
