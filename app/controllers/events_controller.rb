class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(title: params[:event][:title], 
                      description: params[:event][:description],
                      start_date: params[:event][:start_date],
                      duration: params[:event][:duration],
                      location: params[:event][:location],
                      price: params[:event][:price])

    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    event_params = params.require(:event).permit(:title, :description, :start_date, :duration, :location, :price)
    @event.update(event_params)
    redirect_to root_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
  end
end
