User.delete_all
u1 = User.create(username: 'sheep', password: 'password', password_confirmation: 'password', email: 'sheep@sheeprocks.com', role: 'admin')
u2 = User.create(username: 'joseph', password: 'password', password_confirmation: 'password', email: 'joep@sheeprocks.com', role: 'user')
u3 = User.create(username: 'paul', password: 'password', password_confirmation: 'password', email: 'paul@sheeprocks.com', role: 'user')
u4 = User.create(username: 'jimbo', password: 'password', password_confirmation: 'password', email: 'jim@sheeprocks.com', role: 'user')
u5 = User.create(username: 'marcy', password: 'password', password_confirmation: 'password', email: 'marcy@sheeprocks.com', role: 'user')
u6 = User.create(username: 'alesia', password: 'password', password_confirmation: 'password', email: 'alesia@sheeprocks.com', role: 'user')
u7 = User.create(username: 'linda', password: 'password', password_confirmation: 'password', email: 'linda@sheeprocks.com', role: 'user')


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

OwnedBook.delete_all
OwnedBook.create(user_id: u1.id, book_id: b1.id)
OwnedBook.create(user_id: u1.id, book_id: b3.id)
OwnedBook.create(user_id: u1.id, book_id: b8.id)
