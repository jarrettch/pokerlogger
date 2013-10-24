class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def show
    @session = Session.find(params[:id])
  end

  def create
    @session = Session.create(params[:session].permit(:date_played, :location, :game_type, :stakes, :hours_played, :profit_or_loss, :notes))
    redirect_to :action => 'show', :id =>@session._id
  end

  def destroy
    Session.find(params[:id]).destroy
    redirect_to sessions_url
  end

end