# encoding:utf-8
require 'app_constants'
class TopController < ApplicationController
  
  BAND_MASTER_MSG = {:username => "ユーザー名", :e_mail => "E-Mail"}
  
  def top
    
  end
  
  def member_login
    user = User.find_by_username_and_password(params[:username], params[:password])
    if user.nil?
      @login_errors = "ログインエラー"
      session[:username_m] = params[:username]
      render 'top'
    elsif user.status == USER_INTERIUM
      session[:username_m] = params[:username]      
      @login_errors = "正式登録の手続きをしていません"
      render 'top'
    else
      session[:username_m] = nil
      session[:uid] = user.id
      redirect_to top_portal_index_path
    end
  end
  
  def bandmaster
    user = User.new(:username => params[:username], :e_mail => params[:e_mail], 
      :e_mail_confirmation => params[:e_mail_confirmation], :password => params[:password])
      session_parameters = BAND_MASTER_MSG.keys
      session_parameters << :e_mail_confirmation

    if user.valid?
      session_parameters.each do |parameter|
        session[parameter.to_sym] = nil
      end
      user.register_time = Time.now + 9.days
      user.status = USER_INTERIUM
      user.save!
      send_register_mail user
    else
      session_parameters.each do |parameter| 
        session[parameter] = params[parameter]
      end
      @errors = to_error_messages(user.errors)
      render :top
    end
  end
  
  
  private

  #
  # 借り登録し、仮登録メールを送る
  def send_register_mail(user)
    MusicMailer.temp_register(user).deliver
  end
  
  def to_error_messages(errors)
    error_msgs = []
    BAND_MASTER_MSG.keys.each do |sym|
      if errors.has_key?(sym) 
        error_msgs << "#{BAND_MASTER_MSG[sym]}#{errors[sym].first}"
      end
    end
    error_msgs
  end
end
