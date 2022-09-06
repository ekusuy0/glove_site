class Public::UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to users_my_page_path
  end

  def out_check
    @user = current_user
  end

  def out
    @user = current_user
    @user.update(user_params)
    session[:current_customer] = nil
    redirect_to  root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :zip_code, :address, :phone_number, :email, :user_status)
  end
end
