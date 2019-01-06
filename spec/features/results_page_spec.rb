require 'rails_helper'

describe 'as a user' do
  describe 'after successfully submitting a location on "/"' do
    describe 'displays the "/results" page' do
      it 'shows the results page' do
        visit '/'

        fill_in 'Location', with: 'Denver, CO'

        click_on 'Submit'

        expect(current_path).to eq('/results')

        expect(page).to have_content("Today")
        expect(page).to have_content("Next 5 Days")
        expect(page).to have_content("Next 10 Days")

        expect(page).to have_button("Home")

        #Today section
        expect(page).to have_content("You should wear:")

        expect(page.find(".clothing-image")[:class]).to eq("clothing-image")
        expect(page.find(".clothing-recommendation")[:class]).to eq("clothing-recommendation")
        expect(page.find(".city")[:class]).to eq("city")
        expect(page.find(".weather-summary")[:class]).to eq("weather-summary")
        expect(page.find(".current-weather-icon")[:class]).to eq("current-weather-icon")
        expect(page.find(".current-temp")[:class]).to eq("current-temp")
        expect(page.find(".day-of-the-week")[:class]).to eq("day-of-the-week")
        expect(page.find(".todays-high")[:class]).to eq("todays-high")
        expect(page.find(".todays-low")[:class]).to eq("todays-low")
        expect(page.find(".now")[:class]).to eq("now")
        expect(page.find(".in-one-hour")[:class]).to eq("in-one-hour")
        expect(page.find(".in-two-hours")[:class]).to eq("in-two-hours")
        expect(page.find(".in-three-hours")[:class]).to eq("in-three-hours")
        expect(page.find(".in-four-hours")[:class]).to eq("in-four-hours")
        expect(page.find(".in-five-hours")[:class]).to eq("in-five-hours")
        expect(page.find(".in-six-hours")[:class]).to eq("in-six-hours")

        #Next 5 days section
        expect(page.find(".forecast")[:class]).to eq("forecast")
        expect(page.find(".in-one-day")[:class]).to eq("in-one-day")
        expect(page.find(".in-two-days")[:class]).to eq("in-two-days")
        expect(page.find(".in-three-days")[:class]).to eq("in-three-days")
        expect(page.find(".in-four-days")[:class]).to eq("in-four-days")
        expect(page.find(".in-five-days")[:class]).to eq("in-five-days")

        expect(page.find(".day")[:class]).to eq("day-of-the-week")
        expect(page.find(".days-icon")[:class]).to eq("days-icon")
        expect(page.find(".days-high")[:class]).to eq("days-high")
        expect(page.find(".days-low")[:class]).to eq("days-low")

        #Next 10 days section
      end
    end
  end
end