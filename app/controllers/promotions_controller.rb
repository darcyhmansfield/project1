class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all
  end

  def create
    promotion = Promotion.create promotion_params
    redirect_to promotion
  end

  def new
    @promotion = Promotion.new
  end

  def edit
    @promotion = Promotion.find params[:id]
  end

  def update
    promotion = Promotion.find params[:id]
    promotion.update promotion_params
    redirect_to promotion
  end

  def show
    @promotion = Promotion.find params[:id]
  end

  def destroy
    promotion = Promotion.find params[:id]
    promotion.destroy
    redirect_to promotions_path
  end

  private

  def promotion_params
    params.require(:promotion).permit(:abbrev, :logo, :name, :country, :year, :instagram)
  end

end
