# encoding:utf-8
class Bands::BandsController < ApplicationController
  
  def band_list
    
  end
  
  def new
  end
  
  def confirm
    @band = Band.new(:name => params[:name], :explanation => params[:explanation])
    %w(name explanation).each { |data|
      session[data.to_sym] = params[data.to_sym]
    }
    unless @band.valid?
      @errors = "バンド名#{@band.errors.messages[:name].first}"
      render 'new'
    else
      @band.save
      redirect_to 
    end
  end
  
  def create
    band = Band.new(:name => params[:name], :explanation => params[:explanation])
    band_master = BandMaster.new
    band_master.save
    user = User.find(session[:uid])
    user.band_masters << band_master
    user.save
    band.band_master = band_master
    band.save!
  end
  
  def update
    
  end
  
end
