class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save
        redirect_to user_path
    end

    def edit
    end

    def update
    end
    
    def show
        @user = User.find(params[:id])
    end

    private
    def user_params
        params.require(:user).permit(:name, :introduction, :profile_image_id)
    end
end
