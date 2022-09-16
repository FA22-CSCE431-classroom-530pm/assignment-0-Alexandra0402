# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a full book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J K Rowling'
    fill_in 'Price', with: 10.00
    fill_in 'Date', with: '09/01/1991'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J K Rowling')
    expect(page).to have_content('10.0')
    expect(page).to have_content('1991-01-09')
  end
end
