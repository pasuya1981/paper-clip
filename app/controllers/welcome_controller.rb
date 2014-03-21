class WelcomeController < ApplicationController
  def index
  	flash.now[:alert] = "Welcome"
  end
end
