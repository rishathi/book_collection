require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with a title' do
    book = Book.new(title: 'Valid Title')
    expect(book).to be_valid
  end

  it 'is invalid without a title' do
    book = Book.new(title: '')
    expect(book).not_to be_valid
    expect(book.errors[:title]).to include("can't be blank")
  end

  it 'can have an author' do
    book = Book.new(title: 'Book with Author', author: 'Jane Doe')
    expect(book.author).to eq('Jane Doe')
  end

  it 'can have a price' do
    book = Book.new(title: 'Priced Book', price: 19.99)
    expect(book.price).to eq(19.99)
  end

  it 'can have a published date' do
    date = Date.new(2020, 1, 1)
    book = Book.new(title: 'Dated Book', published_date: date)
    expect(book.published_date).to eq(date)
  end
end
