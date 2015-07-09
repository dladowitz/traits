class FoundersController < ApplicationController
  def index
    # probably need to create a guest vs user layout.
    render "landing_pages/landing", layout: "landing_page/landing_layout"
  end
end
