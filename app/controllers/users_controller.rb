class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: { user_id: @user.id, email: @user.email}
    else
      render json: { errors: @user.errors}
    end
  end

  def login
    @user = User.find_by(email: login_params[:email])
    if @user.nil?
      render json: {message: "Email not found in records"}
    else
      if @user.authenticate(login_params[:password])
        render json: {user_id: @user.id, email: @user.email}
      else
        render json: {errors: "Password incorrect. Login failed."}
      end
    end
  end

  def authenticate_user
    user = User.find(user_id_params[:id])
    if user.nil?
      render json: {note: "authentication failed"}
    else
      render json: {note: "authentication successful"}
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def login_params
    params.permit(:email, :password)
  end

  def user_id_params
    params.permit(:id)
  end
end