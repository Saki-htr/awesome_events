class EventsController < ApplicationController
  def new
    @event = current_user.created_events.build # newのエイリアス
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to @event, notice: "作成しました"
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name, :place, :image, :remove_image, :content, :start_at, :end_at
    )
  end
end
