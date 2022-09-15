# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '50'
    fill_in 'Published date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'missing inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('harry potter')
  end
end

RSpec.describe 'Editing a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '50'
    fill_in 'Published date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')

    click_on 'Edit'
    fill_in 'Title', with: 'lord of the rings'
    click_on 'Update Book'
    visit books_path
    expect(page).to have_content('lord of the rings')
  end

  scenario 'missing inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '50'
    fill_in 'Published date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')

    click_on 'Edit'
    fill_in 'Title', with: ''
    click_on 'Update Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Deleting a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '50'
    fill_in 'Published date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')

    click_on 'Destroy'
    expect(page).not_to have_content('harry potter')
  end
end
