require 'rails_helper'

RSpec.describe 'as a user' do
  describe 'visiting the root page "/"' do
    it 'shows the title of the page' do
      visit '/'

      expect(page).to have_content('Weatherwise')
      expect(page).to have_content('A better way to plan your day')
      expect(page).to have_field('Location')
      expect(page).to have_button('Submit')
    end
    it 'the submit button takes the user to the results page' do
      visit '/'

      fill_in 'Location', with: 'Denver, CO'

      click_on 'Submit'
      expect(current_path).to eq('/results')
    end
  end
end