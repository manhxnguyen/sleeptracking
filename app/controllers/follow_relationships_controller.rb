class FollowRelationshipsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    follower.follow(user)
    json_response(@user, :created)
  end

  def edit
  end

  def update
  end

  def destroy
    follower.unfollow(user)
    head :no_content
  end

  private

  def follower_params
    params.permit(:follower, :id)
  end

  def follower
    @follower ||= User.find(params[:follower])
  end

  def user
    @user ||= User.find(params[:id])
  end
end
