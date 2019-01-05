require 'rails_helper'

RSpec.describe 'as a user' do
  describe 'visiting the root page "/"' do
    it 'shows the title of the page' do
      visit '/'
      save_and_open_page
      expect(page).to have_content('Weather Planner')
      expect(page).to have_content('A better way to plan your day')

      expect(page).to have_field('location')
      # expect(page).to have_submit('Submit')
    end
  end
end