class FriendsController < ApplicationController
  before_action :set_user, :check_correct_user

  def index
    @friends = @user.friends.uniq
  end

  def new
    @friend = Friend.new
  end

  def create
    # @friend = Friend.create(friend_params)
    @friend = @user.friends.build(friend_params)
    # @user.friends << @friend
    @friend.save
    
    redirect_to user_friends_path(@user)
  end

  def edit
    @friend = @user.friends.find(params[:id])
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy

    redirect_to user_friends_path(@user)
  end

  def show
    # raise params.inspect
    # binding.pry
    @friend = @user.friends.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friend_params)
    
    redirect_to user_friend_path(@user, @friend)
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
