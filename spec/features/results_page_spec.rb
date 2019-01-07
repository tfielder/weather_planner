require 'rails_helper'

describe 'as a user' do
  describe 'after successfully submitting a location on "/"' do
    describe 'displays the "/results" page' do
      it 'shows the results page' do
        visit '/'

        fill_in :location, with: 'Denver, CO'

        click_on 'Submit'

        expect(current_path).to eq('/results')

        expect(page).to have_content("Today")
        expect(page).to have_content("Weekly Forecast")

        expect(page).to have_link("Home")

        #Today section
        expect(page).to have_content("Clothing recommendation:")

        expect(page.find(".clothing-image")[:class]).to eq("clothing-image")
        expect(page.find(".clothing-recommendation")[:class]).to eq("clothing-recommendation")
        expect(page.find(".location")[:class]).to eq("location")
        expect(page.find(".weather-summary")[:class]).to eq("weather-summary")
        expect(page.find(".current-weather-icon")[:class]).to eq("current-weather-icon")
        expect(page.find(".current-temp")[:class]).to eq("current-temp")
        expect(page.find(".day-of-the-week")[:class]).to eq("day-of-the-week")
        expect(page.find(".todays-high")[:class]).to eq("todays-high")
        expect(page.find(".todays-low")[:class]).to eq("todays-low")
        expect(page.find(".in-one-hour")[:class]).to eq("in-one-hour")
        expect(page.find(".in-two-hours")[:class]).to eq("in-two-hours")
        expect(page.find(".in-three-hours")[:class]).to eq("in-three-hours")
        expect(page.find(".in-four-hours")[:class]).to eq("in-four-hours")
        expect(page.find(".in-five-hours")[:class]).to eq("in-five-hours")
        expect(page.find(".in-six-hours")[:class]).to eq("in-six-hours")

        #Next 5 days section
        expect(page.find(".weekly-forecast-main")[:class]).to eq("weekly-forecast-main")
        expect(page.find(".in-one-day")[:class]).to eq("in-one-day")
        expect(page.find(".in-two-days")[:class]).to eq("in-two-days")
        expect(page.find(".in-three-days")[:class]).to eq("in-three-days")
        expect(page.find(".in-four-days")[:class]).to eq("in-four-days")
        expect(page.find(".in-five-days")[:class]).to eq("in-five-days")

        # expect(page.find(".day-of-the-week-1")[:class]).to eq("day-of-the-week-1")
        # expect(page.find(".days-icon-1")[:class]).to eq("days-icon-1")
        # expect(page.find(".days-high-1")[:class]).to eq("days-high-1")
        # expect(page.find(".days-low-1")[:class]).to eq("days-low-1")

        expect(page.find(".in-six-days")[:class]).to eq("in-six-days")
        expect(page.find(".in-seven-days")[:class]).to eq("in-seven-days")
      end
    end
  end
end