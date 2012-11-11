# encoding:utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery 

  def check_member
    if session[:id].nil?
      return false
    end
    return true
  end
end
