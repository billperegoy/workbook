User.delete_all
u1 = User.create(name: 'The Sheep', username: 'sheep', password: 'password', password_confirmation: 'password', email: 'sheep@sheeprocks.com', role: 'admin')
u2 = User.create(name: 'Joseph Poodle', username: 'joseph', password: 'password', password_confirmation: 'password', email: 'joep@sheeprocks.com', role: 'user')
u3 = User.create(name: 'Paul Rand', username: 'paul', password: 'password', password_confirmation: 'password', email: 'paul@sheeprocks.com', role: 'user')
u4 = User.create(name: 'Jim Lemon', username: 'jimbo', password: 'password', password_confirmation: 'password', email: 'jim@sheeprocks.com', role: 'user')
u5 = User.create(name: 'Marcy Poodle', username: 'marcy', password: 'password', password_confirmation: 'password', email: 'marcy@sheeprocks.com', role: 'user')
u6 = User.create(name: 'Alesia', username: 'alesia', password: 'password', password_confirmation: 'password', email: 'alesia@sheeprocks.com', role: 'user')
u7 = User.create(name: 'Linda Poophead', username: 'linda', password: 'password', password_confirmation: 'password', email: 'linda@sheeprocks.com', role: 'user')


Book.delete_all
b0 = Book.create(title: 'Know Your Brand', thumbnail: 'know-your-brand-class1-300x300.png', description: 'Know your brand class', price: 50.00)
b1 = Book.create(title: 'Tagline Workshop', thumbnail: 'tagline-workbook-300x300.png', description: 'Tagline Workbook', price: 50.00)
b2 = Book.create(title: '1 To 1', thumbnail: '1to1-300x300.png', description: '1 To 1', price: 50.00)
b3 = Book.create(title: 'Learn Live', thumbnail: 'learn-live-300x300.png', description: 'Learn Live', price: 50.00)

Page.delete_all
b0_p0 = Page.create(title: 'The Starting Place', description: "Your starting place may be... blah blah blah blahi blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", book_id: b0.id)
b0_p1 = Page.create(title: 'The why: values', description: "Simon Sinek, author of...  blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", book_id: b0.id)

Question.delete_all
b0_p0_q0 = Question.create(title: 'My business name (or working title)', format: 'item', page_id: b0_p0.id)
b0_p0_q1 = Question.create(title: 'What do you want to get out of this process of branding? (Goals, questions to answer, expresions of existential angst...)', format: 'item', page_id: b0_p0.id)

b0_p1_q0 = Question.create(title: 'I do this work because (try to list at least 5 reasons)', format: 'list', page_id: b0_p1.id)
b0_p1_q1 = Question.create(title: 'What are the personal values that I feel most strongly about? (List as many as you want.', format: 'list', page_id: b0_p1.id)
b0_p1_q2 = Question.create(title: 'Which personal values are already in your business? How do they translate?', format: 'list', page_id: b0_p1.id)
b0_p1_q3 = Question.create(title: "Which personal values that you listed seem out of alignment with your business or don't translate across context? Why do they seem disconnected?", format: 'essay', page_id: b0_p1.id)
b0_p1_q4 = Question.create(title: "Are there values at work in your business that you don't share personally?", format: 'essay', page_id: b0_p1.id)


OwnedBook.delete_all
#OwnedBook.create(user_id: u1.id, book_id: b1.id)
#OwnedBook.create(user_id: u1.id, book_id: b3.id)
#OwnedBook.create(user_id: u1.id, book_id: b8.id)
