# encoding:utf-8
require 'app_constants'
class MusicMailer < ActionMailer::Base
  
  default from: "susumu.majima@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.music_mailer.temp_register.subject
  #
  def temp_register(user)
    @url = "#{HOST_NAME}#{url_for(band_master_users_users_path)}"
    @url << "?username=#{user.username}"
    @url << "&secret=#{CipherUtil.encrypt(user.username)}"
    
    mail subject: "MusicSNS仮登録のご案内", to: "#{user.e_mail}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.music_mailer.register.subject
  #
  def register
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
