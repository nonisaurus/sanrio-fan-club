class UsersController < ApplicationController
    # before_action :authenticate_user!
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
        if current_user
            @users = User.all
          else
            redirect_to new_user_session_path, alert: "You need to sign in or sign up to look at your profile."
          end
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    def new
      @user = User.new
    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def create
      @user = User.new(user_params)
      redirect_to @user, notice: 'User was successfully created.'
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @user
      else
        render 'edit'
      end
    end
  
    def destroy
      @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.'
    end
  
    private
    def set_user
        @user = User.find(params[:id])
    end

    # def user_params
    # params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :username, :bio, :profile_pic)
    # end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :bio)
    end
end
