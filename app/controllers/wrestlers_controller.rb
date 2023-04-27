class WrestlersController < ApplicationController
  def index
    @wrestlers = Wrestler.all
  end

  def show
    @wrestler = Wrestler.find params[:id]
  end

  def create
    wrestler = Wrestler.create wrestler_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      wrestler.image = req["public_id"]
      wrestler.save
    end
    redirect_to wrestler
  end

  def edit
    @wrestler = Wrestler.find params[:id]
  end

  def update
    wrestler = Wrestler.find params[:id]
    wrestler.update wrestler_params
    redirect_to wrestler
  end

  def new
    @wrestler = Wrestler.new
  end

  def destroy
    wrestler = Wrestler.find params[:id]
    wrestler.destroy
    redirect_to wrestlers_path
  end

  private

  def wrestler_params
    params.require(:wrestler).permit(:name, :image, :country, :height, :weight, :exp, :rating)
  end

end
