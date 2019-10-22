class UsersController < ApplicationController
    before_action :get_user, only: [:show, :edit, :update, :destroy]
    
    def index
        @users = User.all
    end

    def show
    
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
    end

    def edit
    
    end

    def update
        @user.update(user_params)
    end

    def delete
        @user.destroy
        redirect_to users_path
    end

    private

    def get_user
        @user = User.find(params[:id])        
    end

    def user_params
        params.require(:user).permit(:name, :ticker, :initial_value, :current_value, :initial_quantity, :current_quantity)
    end
end
