User.delete_all
u1 = User.create(name: 'The Sheep', username: 'sheep', password: 'password', password_confirmation: 'password', email: 'sheep@sheeprocks.com', role: 'admin')
u2 = User.create(name: 'Joseph Poodle', username: 'joseph', password: 'password', password_confirmation: 'password', email: 'joep@sheeprocks.com', role: 'user')
u3 = User.create(name: 'Paul Rand', username: 'paul', password: 'password', password_confirmation: 'password', email: 'paul@sheeprocks.com', role: 'user')
u4 = User.create(name: 'Jim Lemon', username: 'jimbo', password: 'password', password_confirmation: 'password', email: 'jim@sheeprocks.com', role: 'user')
u5 = User.create(name: 'Marcy Poodle', username: 'marcy', password: 'password', password_confirmation: 'password', email: 'marcy@sheeprocks.com', role: 'user')
u6 = User.create(name: 'Alesia', username: 'alesia', password: 'password', password_confirmation: 'password', email: 'alesia@sheeprocks.com', role: 'user')
u7 = User.create(name: 'Linda Poophead', username: 'linda', password: 'password', password_confirmation: 'password', email: 'linda@sheeprocks.com', role: 'user')


Book.delete_all
b1 = Book.create(title:  'Book 1', thumbnail: "286.jpg", description: "description", price: 100.00)
b2 = Book.create(title:  'Book 2', thumbnail: "286.jpg", description: "description", price: 100.00)
b3 = Book.create(title:  'Book 3', thumbnail: "286.jpg", description: "description", price: 100.00)
b4 = Book.create(title:  'Book 4', thumbnail: "286.jpg", description: "description", price: 100.00)
b5 = Book.create(title:  'Book 5', thumbnail: "286.jpg", description: "description", price: 100.00)
b6 = Book.create(title:  'Book 6', thumbnail: "286.jpg", description: "description", price: 100.00)
b7 = Book.create(title:  'Book 7', thumbnail: "286.jpg", description: "description", price: 100.00)
b8 = Book.create(title:  'Book 8', thumbnail: "286.jpg", description: "description", price: 100.00)
b9 = Book.create(title:  'Book 9', thumbnail: "286.jpg", description: "description", price: 100.00)

Page.delete_all
p1 = Page.create(title: 'Page 1', description: 'This is page 1', book_id: b1.id)
p2 = Page.create(title: 'Page 2', description: 'This is page 2', book_id: b1.id)
p3 = Page.create(title: 'Page 3', description: 'This is page 3', book_id: b1.id)
p4 = Page.create(title: 'Page 4', description: 'This is page 4', book_id: b1.id)
p5 = Page.create(title: 'Page 5', description: 'This is page 5', book_id: b2.id)

OwnedBook.delete_all
OwnedBook.create(user_id: u1.id, book_id: b1.id)
OwnedBook.create(user_id: u1.id, book_id: b3.id)
OwnedBook.create(user_id: u1.id, book_id: b8.id)
