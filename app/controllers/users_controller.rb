class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :correct_user, only:[:edit, :update]

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
        @user = current_user
          if @user.update(user_params)
            redirect_to user_path(@user.id), notice: 'You have updated user successfully.'
          else
            render :edit
          end
    end
    


    private
    
    def user_params
        params.require(:user).permit(:name, :introduction, :profile_image)
    end
    def correct_user
        @user = User.find(params[:id])
        redirect_to user_path(current_user) unless @user == current_user
    end
end
