class BandsController < ApplicationController

  def new
    render :new
  end

  def index
    render :index
  end

  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  def create
    @band = Band.new(user_params)
    if @band.save!
      redirect_to bands_url(@band.id)
    else
      render :new
    end
  end


  private
  def user_params
    # debugger
    params.require(:band).permit(:name)
  end

end
