# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create([
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', price: 19.20, published_date: Date.new(1925, 4, 10)},   # 10 April 1925
  {title: 'To Kill a Mockingbird', author: 'Harper Lee', price: 19.20, published_date: Date.new(1960, 7, 11)},      # 11 July 1960
  {title: '1984', author: 'George Orwell', price: 19.20, published_date: Date.new(1949, 6, 8)},                     # 8 June 1949
  {title: 'The Catcher in the Rye', author: 'J.D. Salinger', price: 19.20, published_date: Date.new(1951, 7, 16)},  # 16 July 1951
  {title: 'The Hobbit', author: 'J.R.R. Tolkien', price: 19.20, published_date: Date.new(1937, 9, 21)},             # 21 Sept 1937
  {title: 'Fahrenheit 451', author: 'Ray Bradbury', price: 19.20, published_date: Date.new(1953, 10, 19)}            # 19 Oct 1953
])