require 'rails_helper'

describe 'Results Facade' do
  it 'has methods' do
    location = "denver,co"
    VCR.use_cassette('denver_request_results') do
      unformatted_results = ResultsService.new(location).render_results
      rf = ResultsFacade.new(unformatted_results)
      expect(rf.location).to eq("Denver, CO, USA")
      expect(rf.weather_summary).to eq("Partly Cloudy")
      # expect(rf.current_temp).to eq("41")
      # expect(rf.current_weather_icon).to eq()
      # expect(rf.current_temp).to eq()
      # expect(rf.day_of_the_week).to eq()
      # expect(rf.todays_high).to eq()
      # expect(rf.todays_low).to eq()
      # expect(rf.now.to eq()
      # expect(rf.in_x_hours(index).to eq()
      # expect(rf.day_of_the_week(day).to eq()
      # expect(rf.icon_of_the_day(day).to eq()
      # expect(rf.high_of_the_day(day).to eq()
      # expect(rf.low_of_the_day(day).to eq()
    end
  end
end