class FriendsController < ApplicationController
  before_action :set_user, :check_correct_user

  def index
    @friends = @user.friends.uniq
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.save
    
    redirect_to user_friends_path(@user)
  end

  private
    def friend_params
      params.require(:friend).permit(:name)
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def check_correct_user
      @user = User.find(params[:user_id])
      if @user.id != 1
        if current_user
          redirect_to user_path(current_user) if current_user.id != @user.id
        else
          redirect_to root_path
        end
      end
    end
end
