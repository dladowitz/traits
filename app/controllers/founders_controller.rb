class FoundersController < ApplicationController
  layout "guest_pages/guest_layout"
  before_action :set_founder, only: [:show]

  def index
    @founders = Founder.all
  end

  def new
    @founder = Founder.new
  end

  def create
    @founder = Founder.new(founder_params)
    if @founder.save
      redirect_to founder_path(@founder)
    else
      render :new
    end
  end

  def show
  end


  private

  def founder_params
    params.require(:founder).permit(:name, :image_url, :quote)
  end

  def set_founder
    @founder = Founder.find params[:id]
  end
end
