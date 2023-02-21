class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @events = Event.all
  end

  def new
    @events = Event.all
    @event = Event.new
  end
end
