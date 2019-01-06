class HomeController < ApplicationController
  def index
    @location = " "
  end

  def show
    @location = params[:location]
  end
end