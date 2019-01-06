require 'rails_helper'

describe 'as a user' do
  describe 'after successfully submitting a location on "/"' do
    describe 'directs the user to the "/results" page' do
      it 'shows a selection boxes' do
        visit '/'

        fill_in 'Location', with: 'Denver, CO'

        click_on 'Submit'

        expect(current_path).to eq('/results')

        expect(page).to have_content("Today")
        expect(page).to have_content("Next 5 Days")
        expect(page).to have_content("Next 10 Days")

        expect(page).to have_button("Home")
      end
      it 'displays todays conditions' do
        visit '/'

        fill_in 'Location', with: 'Denver, CO'

        click_on 'Submit'

        expect(current_path).to eq('/results')

        expect(page).to have_content("Today")
        expect(page).to have_content("You should wear:")

        expect(page.find(".clothing-image")[:class]).to eq("clothing-image")
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
      end
    end
  end
end