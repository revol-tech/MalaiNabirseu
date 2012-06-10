class DonatesController < ApplicationController
  def index
  end

  def create
   UserMailer.donation_message(:input=>params)
  end
  
end
