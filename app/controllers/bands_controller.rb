class BandsController < ApplicationController

  def new
    band = Band.new
    render :new
  end

  def create
    @band = Band.new(name:params[:name])
    @band.save
    render :show
  end

  def show
    @band = Band.find_by( id: params[:id] )
    render :show
  end

  def destroy
    @band = Band.find_by(id:params[:id])
    @band.destroy
    redirect_to bands_url
  end

  def index
    @band = Band.new
    render :index
  end
end