require 'rails_helper'

feature 'Editing Cars' do
  scenario 'can edit a car' do

    Car.create(
      model: 'Ford',
      make: 'Mustang',
      year: '1967',
      price: '2300'
    )

    visit '/'
    click_link 'Edit'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Camry'
    fill_in 'Year', with: '1987'
    fill_in 'Price', with: '23000'

    click_button 'Pimp my ride'

    expect(page).to have_content('1987 Toyota Camry updated')
    # expect(page).to have_selector('table tr', :count => 3)

    within('table') do
      expect(page).to_not have_content('Ford')
      expect(page).to_not have_content('Mustang')
      expect(page).to_not have_content('1967')
      expect(page).to_not have_content('2300')

      expect(page).to have_content('Toyota')
      expect(page).to have_content('Camry')
      expect(page).to have_content('1987')
      expect(page).to have_content('23000')
    end

  end
end

