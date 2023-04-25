class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all
  end

  def create
    @promotion = Promotion.create
  end

  def new
    @promotion = Promotion.new
  end

  def edit
    @promotion = Promotion.find params[:id]
  end

  def show
    @promotion = Promotion.find params[:id]
  end

  private

  def promotion_params
    params.require(:promotion).permit(:abbrev, :logo, :name, :country, :year, :instagram)
  end

end
