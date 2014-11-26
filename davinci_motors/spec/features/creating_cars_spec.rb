require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
  end

  scenario 'can create a second car' do
    Car.create(
      model: 'Ford',
      make: 'Mustang',
      year: '1967',
      price: '2300'
    )

    visit '/'

    within('table') do
      expect(page).to have_content('Ford')
      expect(page).to have_content('Mustang')
      expect(page).to have_content('1967')
      expect(page).to have_content('2300')
    end

    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Camry'
    fill_in 'Year', with: '1987'
    fill_in 'Price', with: '23000'

    click_button 'Create Car'

    expect(page).to have_content('1987 Toyota Camry created')
    # expect(page).to have_selector('table tr', :count => 3)

    within('table') do
      expect(page).to have_content('Ford')
      expect(page).to have_content('Mustang')
      expect(page).to have_content('1967')
      expect(page).to have_content('2300')

      expect(page).to have_content('Toyota')
      expect(page).to have_content('Camry')
      expect(page).to have_content('1987')
      expect(page).to have_content('23000')
    end

  end
end

