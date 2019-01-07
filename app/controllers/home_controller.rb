class HomeController < ApplicationController
  def index
    @location = " "
  end

  def show
    binding.pry
    unformatted_results = ResultsService.new(params[:location]).render_results
    @results = ResultsFacade.new(unformatted_results)
  end
end