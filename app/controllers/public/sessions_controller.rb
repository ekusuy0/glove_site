# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  before_action :user_status, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end



  # If you have extra params to permit, append them to the sanitizer.

  def after_sign_in_path_for(resource)
    root_path
  end

  protected

  def user_status
    @user = User.find_by(name: params[:user][:name])
    return if !@user
    if (@user.valid_password?(params[:user][:password]) && (@user.user_status == true))
      redirect_to new_user_registration_path
    end
  end

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
