class HomeController < ApplicationController
  def index
    @location = " "
  end

  def show
    unformatted_results = ResultsService.new(params[:location]).render_results
    @results = ResultsFacade.new(unformatted_results)
  end
end