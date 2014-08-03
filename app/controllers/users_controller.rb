require 'open-uri'
require 'json'

class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id]) 
    feed = JSON.parse(open(@user.weather_url).read)
    @current_weather = {
      :summary => feed["current_observation"]["weather"],
      :temp => feed["current_observation"]["temperature_string"],
      :hourly_precip => feed["current_observation"]["precip_1hr_in"],
      :daily_precip => feed["current_observation"]["precip_today_in"],
      :icon_url => feed["current_observation"]["icon_url"]
    }
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :city, :state)
    end
end
