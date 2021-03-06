class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def show
    @pitch_order = pitch_order
    @pitches = Pitch.all
    @preferences = Preference.all
    @rounds = Round.all

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
