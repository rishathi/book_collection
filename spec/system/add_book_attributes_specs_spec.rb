require 'rails_helper'

RSpec.describe "AddBookWithAttributes", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'shows error when required fields are missing' do
    visit root_path
    click_on 'Books'
    click_on 'Add new book'
    fill_in 'book_title', with: ''
    fill_in 'book_author', with: ''
    fill_in 'book_price', with: ''
    fill_in 'book_published_date', with: ''
    click_on 'Add Book'

    expect(page).to have_content('error') # You can later be more specific
  end

  it 'adds book with all attributes successfully' do
    visit root_path
    click_on 'Books'
    click_on 'Add new book'
    fill_in 'book_title', with: 'Complete Book'
    fill_in 'book_author', with: 'Author Name'
    fill_in 'book_price', with: '29.99'
    fill_in 'book_published_date', with: '2020-01-01'
    click_on 'Add Book'

    expect(page).to have_content('Book added successfully.')
    expect(page).to have_content('Complete Book')
    expect(page).to have_content('Author Name')
    expect(page).to have_content('29.99')
    expect(page).to have_content('2020-01-01')
  end
end
