class StaticPagesController < ApplicationController
  def index
    @users = User.all
    @events = Event.all.sort
  end

  def secret
  end
end
