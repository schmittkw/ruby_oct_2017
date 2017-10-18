class EventsController < ApplicationController

  def show
    if current_user
      @events = Event.all
      return render 'events/show'
    end
    redirect_to root_path
  end

  def create
    event = Event.create(event_params)
    unless event.valid?
      flash[:errors] = event.errors.full_messages
      return redirect_to :back
    end
    return redirect_to :back
  end

  def destroy
    event = Event.find(params[:id])
    event.delete
    return redirect_to :back
  end

  private
  def event_params
      params.require(:event).permit(:name, :date, :city,:state).merge(user_id: current_user.id)
  end

end
