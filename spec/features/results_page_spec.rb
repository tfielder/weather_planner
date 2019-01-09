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

        expect(page.find(".clothing-headwear")[:class]).to eq("clothing-headwear")
        expect(page.find(".clothing-top")[:class]).to eq("clothing-top")
        expect(page.find(".clothing-bottom")[:class]).to eq("clothing-bottom")
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
        expect(page.find(".day-1")[:class]).to eq("day-1")
        expect(page.find(".day-2")[:class]).to eq("day-2")
        expect(page.find(".day-3")[:class]).to eq("day-3")
        expect(page.find(".day-4")[:class]).to eq("day-4")
        expect(page.find(".day-5")[:class]).to eq("day-5")

        # expect(page.find(".day-of-the-week-1")[:class]).to eq("day-of-the-week-1")
        # expect(page.find(".days-icon-1")[:class]).to eq("days-icon-1")
        # expect(page.find(".days-high-1")[:class]).to eq("days-high-1")
        # expect(page.find(".days-low-1")[:class]).to eq("days-low-1")

        expect(page.find(".day-6")[:class]).to eq("day-6")
        expect(page.find(".day-7")[:class]).to eq("day-7")
      end
      it 'redirects user to the homepage with invalid location' do
        visit '/'

        fill_in :location, with: '&F*weo)23'

        click_on 'Submit'

        expect(page).to have_content("Could not find weather for that location")
        expect(current_path).to eq('/results')
      end
    end
  end
end