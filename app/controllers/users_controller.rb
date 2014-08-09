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
    # raise params.inspect
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
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :city, :state)
    end

    def check_correct_user
      @user = User.find(params[:id])
      if @user.id != current_user.id
        redirect_to user_path(current_user)
      end
    end

    def set_user
      @user = User.find(params[:id])
    end
end
