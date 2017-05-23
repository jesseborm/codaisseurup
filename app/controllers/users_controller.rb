class UsersController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end
end
