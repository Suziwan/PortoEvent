class StaticPagesController < ApplicationController
  def index
    @users = User.all
    @events = Event.all
  end

  def secret
    @user = User
  end
end
