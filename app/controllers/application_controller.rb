class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # TODO move this somewhere
  # Should probably make this a hash with names as keys
  # current order: Jessica, Paul
  BACKGROUNDS = ["http://internetworld.idg.se/polopoly_fs/1.549874!imageManager/1717142244.jpg","https://fizzle.co/wp-content/uploads/2014/04/paulgraham.jpg","https://farm9.staticflickr.com/8585/16078720103_274c4963aa_h.jpg", "https://farm7.staticflickr.com/6148/5953431898_5daf783ecf_o.jpg", "https://farm4.staticflickr.com/3937/15407330900_7c46ca0238_h.jpg", "https://farm3.staticflickr.com/2871/10093714286_c3925502f0_o.jpg"]
  before_action :set_background

  protect_from_forgery with: :exception


  rescue_from CanCan::AccessDenied do |exception|
    flash[:danger] = "You are not authorized for this page. All your bases are belong to us."
    redirect_to user_path(current_user)
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    flash[:danger] = "That's not a thing in the database"
    redirect_to user_path(current_user)
  end

  def current_user
    User.find session[:id] if session[:id]
  end
  helper_method :current_user  #makes available in view

  def set_background
    @background = BACKGROUNDS.sample
  end

end
