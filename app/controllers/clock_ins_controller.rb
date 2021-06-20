class ClockInsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @clock_in = user.clock.clock_in
    json_response(@clock_in, :created)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user
    @user ||= User.find(params[:id])
  end
end
