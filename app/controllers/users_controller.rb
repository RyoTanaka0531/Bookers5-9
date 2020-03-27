class UsersController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = User.find(params[:id])
        @books = @user.books
        @book = Book.new
    end

    def create
        @user = User.new(user_params)
        @user.save, notice = 'Welcome! You have signed up successfully.'
        @book.save
        redirect_to book_path
    end


    def index
        @user = current_user
        @book = Book.new
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user.id)
    end
    


    private
    def user_params
        params.require(:user).permit(:name, :introduction, :profile_image)
    end
end
