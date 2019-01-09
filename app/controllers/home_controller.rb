class HomeController < ApplicationController
  def index
    @location = " "
  end

  def show
    unformatted_results = ResultsService.new(params[:location]).render_results
    if unformatted_results
      @results = ResultsFacade.new(unformatted_results)
    else
      flash[:notice] = "Could not find weather for that location, try again"
      render action: "index"
    end
  end
end