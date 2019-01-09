class ResultsService
  def initialize(location)
    @location = location
    @api_whether_results = get_api_whether_results
  end

  def render_results
    parse(@api_whether_results)
  end

  private
  def connection(url)
    connect = Faraday.new(:url => "#{url}") do |f|
      f.request :url_encoded
      f.adapter Faraday.default_adapter
    end
  end

  def get_api_whether_results
    @api_whether_results = connection("https://weather-planner-api.herokuapp.com/api/v1/location_results?location=#{@location}").get
  end

  def parse(result)
    JSON.parse(result.body) unless result.body.include?("We're sorry")
  end
end