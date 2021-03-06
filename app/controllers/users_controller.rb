class UsersController < ApplicationController
    before_action :find_user, only: [:show, :create, :destroy, :update]
    def index
        @users = User.all
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: { errors: @user.errors.full_messages }
        end
    end

    def update
        @user.update(user_params)
        @user.save
        render json: @user
    end

    def destroy
        @user.destroy
        render json: @users
    end

    private
    def find_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email_address, :password, :location, :age, :gender)
    end
end
