require 'rails_helper'

RSpec.describe 'Search Govt Members' do
  describe 'happy path', :vcr do
    it 'allows user to search for govt members' do
      visit root_path

      fill_in 'search', with: 'Sanders'
      click_on 'Search'

      expect(page.status_code).to eq(200)
      expect(page).to have_content('Senator Bernard Sanders was found!')
      expect(page).to have_content('SenSanders')
    end

    it 'allows user to search for another govt member' do
      visit root_path

      fill_in :search, with: 'Booker'
      click_button 'Search'

      expect(status_code).to eq(200)
      expect(page).to have_content('Senator Cory Booker was found!')
      expect(page).to have_content('SenBooker')
    end
  end
end
