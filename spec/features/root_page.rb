require 'rails_helper'

describe 'as a user' do
  describe 'visiting the root page "/"' do
    it 'shows the title of the page' do
      visit '/'

      expect(page).to have_content('Weather Planner')
      expect(page).to have_content('A better way to plan your day')

      expect(page).to have_field('location')
      expect(page).to have_button('submit')
    end
  end
end