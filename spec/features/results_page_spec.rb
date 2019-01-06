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

        expect(page).to have_css("clothing-image")
        expect(page).to have_css("city")
        expect(page).to have_css("weather-summary")
        expect(page).to have_css("current-weather-icon")
        expect(page).to have_css("current-temp")
        expect(page).to have_css("day-of-the-week")
        expect(page).to have_css("todays-high")
        expect(page).to have_css("todays-low")
        expect(page).to have_css("now")
        expect(page).to have_css("in-one-hour")
        expect(page).to have_css("in-two-hours")
        expect(page).to have_css("in-three-hours")
        expect(page).to have_css("in-four-hours")
        expect(page).to have_css("in-five-hours")
        expect(page).to have_css("in-six-hours")
      end
    end
  end
end