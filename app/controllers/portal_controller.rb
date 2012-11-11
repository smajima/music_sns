class PortalController < ApplicationController
  before_filter :check_member
  
  def top
    @user = User.find(session[:uid]) 
    @band_masters = @user.band_masters
    @band_members = @user.band_members
  end
end
