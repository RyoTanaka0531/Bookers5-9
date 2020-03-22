class BooksController < ApplicationController
    def new
        @book = Book.new
    end

    def index
        @books = Book.all

    end

    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to books_path
    end

    def show
    end

    def destroy
    end

    def edit
    end

    private

    def books_params
        params.require(:book).permit(:title, :introduction)
    end

end
