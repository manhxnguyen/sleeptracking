class SleepRecordsController < ApplicationController
  def index
    @sleep_records = user.sleep_records.order(created_at: :asc)
    json_response(@sleep_records)
  end

  def show
  end

  def new
  end

  def create
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
