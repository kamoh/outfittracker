require 'open-uri'
require 'json'

class UsersController < ApplicationController
  before_action :check_correct_user, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    if current_user
      redirect_to user_path(current_user)
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id]) 
    feed = JSON.parse(open(@user.weather_url).read)
    if feed["response"]["error"]
      @current_weather = nil
    else
      @current_weather = {
      :summary => feed["current_observation"]["weather"],
      :temp => feed["current_observation"]["temperature_string"],
      :hourly_precip => feed["current_observation"]["precip_1hr_in"],
      :daily_precip => feed["current_observation"]["precip_today_in"],
      :icon_url => feed["current_observation"]["icon_url"]
    }
    end

    @current_weather[:hourly_precip] = "0.00" if @current_weather[:hourly_precip] =~ /999/
  end

  def create
    @user = User.new(user_params)
    raise params.inspect
    @user.save

    redirect_to @user
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def generate_new_password_email
    user = User.find(params[:user_id])
    user.send_reset_password_instructions
    flash[:notice] = "Reset password instructions have been sent to #{user.email}."
    redirect_to admin_user_path(user)
  end

  private
    def user_params
      params.require(:user).permit(:name, :city, :state)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def check_correct_user
      @user = User.find(params[:id])
      if @user.id != 1
        if current_user
          redirect_to user_path(current_user) if current_user.id != @user.id
        else
          redirect_to root_path
        end
      end
    end
end
