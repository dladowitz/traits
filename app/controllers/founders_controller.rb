class FoundersController < ApplicationController
  layout "guest_pages/guest_layout"
  before_action :set_founder, only: [:show]

  def index
    @founders = Founder.all.order(created_at: "DESC")
  end

  def new
    @founder = Founder.new
    3.times do
      @founder.traits.build
    end
  end

  def create
    @founder = Founder.new(founder_params)
    @founder.validate_image_url
    if @founder.save
      flash[:success] = "New Founder Created!"
      redirect_to founder_path(@founder)
    else
      flash.now[:danger] = "Error, Founder Not Created"
      render :new
    end
  end

  def show
  end


  private

  def founder_params
    params.require(:founder).permit(:name, :image_url, :quote, traits_attributes: [:name])
  end

  def set_founder
    @founder = Founder.find params[:id]
  end
end
