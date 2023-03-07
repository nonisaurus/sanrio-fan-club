class UsersController < ApplicationController
    # before_action :authenticate_user!
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
        if current_user
            @users = [current_user]
          else
            redirect_to new_user_session_path, alert: "You need to sign in or sign up to look at your profile."
          end
    end
  
    def show
    end
  
    def new
      @user = User.new
    end
  
    def edit

    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: 'User was successfully created.'
      else
        render :new
      end
    end
  
    def update
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.'
      else
        render :edit
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

    def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :username, :bio, :profile_pic)
    end
end
