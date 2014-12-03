require 'rails_helper'

feature 'Investor Authentication' do
  scenario 'allows an investor to signup' do
    visit '/investors'

    expect(page).to have_link('Investor Signup')

    click_link 'Investor Signup'

  end
end
