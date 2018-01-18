require_all 'app'

10.times do |i|
  User.find_or_create_by(name: "User#{i}")
end

20.times do |i|
  Book.find_or_create_by(title: "Book #{i}")
end

5.times do |i|
  Author.find_or_create_by(name: "Bob #{i}")
end

Category.find_or_create_by(name: "Horror")
Category.find_or_create_by(name: "Fantasy")
Category.find_or_create_by(name: "Non-fiction")
Category.find_or_create_by(name: "Young Adult")

Book.all.each do |book|
  book.category = Category.all.sample
  book.author = Author.all.sample
  book.save
end
