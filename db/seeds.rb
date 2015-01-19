User.delete_all
u1 = User.create(name: 'The Sheep', username: 'sheep', password: 'password', password_confirmation: 'password', email: 'sheep@sheeprocks.com', role: 'admin')
u2 = User.create(name: 'Joseph Poodle', username: 'joseph', password: 'password', password_confirmation: 'password', email: 'joep@sheeprocks.com', role: 'user')
u3 = User.create(name: 'Paul Rand', username: 'paul', password: 'password', password_confirmation: 'password', email: 'paul@sheeprocks.com', role: 'user')
u4 = User.create(name: 'Jim Lemon', username: 'jimbo', password: 'password', password_confirmation: 'password', email: 'jim@sheeprocks.com', role: 'user')
u5 = User.create(name: 'Marcy Poodle', username: 'marcy', password: 'password', password_confirmation: 'password', email: 'marcy@sheeprocks.com', role: 'user')
u6 = User.create(name: 'Alesia', username: 'alesia', password: 'password', password_confirmation: 'password', email: 'alesia@sheeprocks.com', role: 'user')
u7 = User.create(name: 'Linda Poophead', username: 'linda', password: 'password', password_confirmation: 'password', email: 'linda@sheeprocks.com', role: 'user')


Book.delete_all
b0 = Book.create(title: 'Know Your Brand', cover_image: '473x600xknow-your-brand-book.jpg', tile_image: 'know-your-brand-class1-300x300.png', description: Forgery(:lorem_ipsum).words(300), price: 50.00)
b1 = Book.create(title: 'Tagline Workshop', cover_image: '473x600xknow-your-brand-book.jpg',tile_image: 'tagline-workbook-300x300.png', description: 'Tagline Workbook', price: 50.00)
b2 = Book.create(title: '1 To 1', cover_image: '473x600xknow-your-brand-book.jpg', tile_image: '1to1-300x300.png', description: '1 To 1', price: 50.00)
b3 = Book.create(title: 'Learn Live', cover_image: '473x600xknow-your-brand-book.jpg', tile_image: 'learn-live-300x300.png', description: 'Learn Live', price: 50.00)

Page.delete_all
b0_p0 = Page.create(number: 1, title: 'The Starting Place', description: "Your starting place may be..." + Forgery(:lorem_ipsum).words(300), book_id: b0.id)
b0_p1 = Page.create(number: 2, title: 'The why: values', description: "Simon Sinek, author of..." + Forgery(:lorem_ipsum).words(300),  book_id: b0.id)
b0_p2 = Page.create(number: 3, title: 'Another page', description: Forgery(:lorem_ipsum).words(150), book_id: b0.id)
b0_p3 = Page.create(number: 4, title: 'Yet Another page', description: Forgery(:lorem_ipsum).words(150), book_id: b0.id)
b0_p4 = Page.create(number: 5, title: 'Kitty Kitty Page', description: Forgery(:lorem_ipsum).words(150), book_id: b0.id)
b0_p5 = Page.create(number: 6, title: 'Sheep page', description: Forgery(:lorem_ipsum).words(150), book_id: b0.id)
b0_p6 = Page.create(number: 7, title: 'Out of Names Page', description: Forgery(:lorem_ipsum).words(150), book_id: b0.id)

Question.delete_all
b0_p0_q0 = Question.create(title: 'My business name (or working title)', format: 'item', page_id: b0_p0.id)
b0_p0_q1 = Question.create(title: 'What do you want to get out of this process of branding? (Goals, questions to answer, expresions of existential angst...)', format: 'essay', page_id: b0_p0.id)

b0_p1_q0 = Question.create(title: 'I do this work because (try to list at least 5 reasons)', format: 'list', page_id: b0_p1.id)
b0_p1_q1 = Question.create(title: 'What are the personal values that I feel most strongly about? (List as many as you want.', format: 'list', page_id: b0_p1.id)
b0_p1_q2 = Question.create(title: 'Which personal values are already in your business? How do they translate?', format: 'list', page_id: b0_p1.id)
b0_p1_q3 = Question.create(title: "Which personal values that you listed seem out of alignment with your business or don't translate across context? Why do they seem disconnected?", format: 'essay', page_id: b0_p1.id)
b0_p1_q4 = Question.create(title: "Are there values at work in your business that you don't share personally?", format: 'essay', page_id: b0_p1.id)

SliderQuestion.delete_all
b0_p2_q1 = SliderQuestion.create(left_adjective: 'cold', right_adjective: 'hot', steps: 3, page_id: b0_p2.id)
b0_p2_q2 = SliderQuestion.create(left_adjective: 'stuffy', right_adjective: 'hip', steps: 3, page_id: b0_p2.id)
b0_p2_q3 = SliderQuestion.create(left_adjective: 'square', right_adjective: 'cool', steps: 3, page_id: b0_p2.id)
b0_p2_q3 = SliderQuestion.create(left_adjective: 'local', right_adjective: 'global', steps: 3, page_id: b0_p2.id)
b0_p2_q4 = SliderQuestion.create(left_adjective: 'personal', right_adjective: 'anonymous', steps: 3, page_id: b0_p2.id)
b0_p2_q5 = SliderQuestion.create(left_adjective: 'sweet', right_adjective: 'piquant', steps: 3, page_id: b0_p2.id)
b0_p2_q6 = SliderQuestion.create(left_adjective: 'elegant', right_adjective: 'casual', steps: 3, page_id: b0_p2.id)
b0_p2_q7 = SliderQuestion.create(left_adjective: 'sophisticated', right_adjective: 'naive', steps: 3, page_id: b0_p2.id)

Answer.delete_all
