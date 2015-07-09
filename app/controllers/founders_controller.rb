class FoundersController < ApplicationController
  layout "guest_pages/guest_layout"

  def index
    @founders = Founder.all
  end
end
