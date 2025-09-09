require 'rails_helper'

RSpec.describe "AddBookGoodTitles", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'Adds Book to the database' do
    visit root_path
    click_on 'Books'
    expect(page).to have_content('Add new book')
    click_on 'Add new book'
    fill_in 'book_title', with: 'Test Book'
    click_on 'Add Book'
    expect(page).to have_content('Book added successfully.')
    expect(page).to have_content('Test Book')
  end
end
