class HomeController < ApplicationController
  def index
    @users = User.all
    @events = Event.all.sort
  end
end
