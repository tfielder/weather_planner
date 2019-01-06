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
    end
  end
end