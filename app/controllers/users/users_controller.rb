# encoding:utf-8
require 'app_constants'
class Users::UsersController < ApplicationController
  
  def new
    
  end
  
  def new_with_captcha
    User.new
    @captcha = true
    
  end
  
  def add_member
    user = User.find_by_email(params[:e_mail])
    unless user.nil?
      
    end
        
  end
  
  def create
    
  end
 
  def band_master
    username = params[:username]
    secret = params[:secret]
    begin
      decrypt_string = CipherUtil.decrypt(secret)
    rescue Exception
      render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    end
    unless decrypt_string == username
      render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    end
    @user = User.find_by_username(params[:username])
    @user.password = nil
  end
  
  def update
    user = User.find_by_username(params[:username])
    parameter = {:password => params[:password]}
    parameter.merge! Hash.new(:password_confirmation => params[:password_confirmation])
    user.update_attributes(parameter)
    unless user.valid?
      @errors = "パスワード#{user.errors.messages[:password].first}"
      render 'band_master'
    end
    user.status = USER_REGULAR
    user.save
    redirect_to top_portal_index_path
  end
  
  def confirm
    
  end
  
  def destroy
    
  end
  
end
