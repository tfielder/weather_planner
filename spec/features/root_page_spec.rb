require 'rails_helper'

RSpec.describe 'as a user' do
  describe 'visiting the root page "/"' do
    it 'shows the title of the page' do
      visit '/'

      expect(page).to have_content('Weather Planner')
      expect(page).to have_content('A better way to plan your day')

      expect(page).to have_field('location')
      # expect(page).to have_('Submit')
    end
    it 'the submit button takes the user to the results page' do
      visit '/'

      fill_in :location, with: 'Denver, CO'

      # find('input[name="Submit"]').click
      # expect(current_path).to eq('/results')
    end
  end
end