require 'rails_helper'

feature 'Landing on homepage' do
  scenario 'Someone lands on the homepage' do
    visit '/'
    expect(page).to have_content('Renewable Yield
A fixed income alternative that funds renewable energy.')
  end
end

