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
b0_p0 = Page.create(number: 1, title: 'The Starting Place', description: "Your starting place may be a business that already exists and has a brand already — very developed or rather undeveloped. You may be starting with only an idea for a business, but want to know more about its brand right from the start; this is a wonderful way to understand your idea deeply and thoroughly and to get a huge jumpstart on everything that comes next.
<br>
Where ever you are, going through the worksheets in this book will challenge you to look at at your business in a kind of light you probably haven’t seen it in before. That light will be revealing. In a good way. You’ll be forced to make decisions, and form opinions about your brand. 
<br>
So, to begin at the beginning…", book_id: b0.id)

b0_p1 = Page.create(number: 2, title: 'The why: values', description: "Simon Sinek, author of “Start with Why” and presenter of a TED talk on the same topic says, “People don’t buy what you do, they buy why you do it.” Somehow, this simple sentiment contains a world of wisdom (I guess that’s how he wrote a whole book about it). It tells you that you can’t be in business just to make a buck. It tells you you need to embrace authenticity in your business and your message. It tells you that you have to put yourself into it. It tells you that you need to know and understand your motivations in order to be able to communicate them to others, either explicitly or implicitly in the way you operate.",  book_id: b0.id)

b0_p2 = Page.create(number: 3, title: 'The why: your mission (should you choose to accept it)', description: "Form and function
<br>
This discussion of values may have led you to thinking about how to incorporate more “good” into your business. And the definition of good is multifold. Good for you, good for your customers, good for the community, good for the planet. 
<br>
Making your business “more good” for you and for your customers is your quotidian work. Here, we’re going to probe a little about the possibilities that your business could serve up some good to some larger-scale recipients. 
Incorporating some degree of social entrepreneurship into what you’re doing might make sense. If you’re just starting out (and you’re feeling it) it’s a valuable way to think about your business model from the get go. If you’ve been in business for a while, it could be a good time to take a cue from the exploration of values in Exercise 2 and see if there’s a way to put your money where your mouth is (so to speak… it doesn’t have to literally be about giving money).
<br>
You may already have a business with a footing in this territory. You may be running a non-profit, social hybrid business, social entrepreneurship business, L3C, B Corporation, cooperative, triple bottom line company or a company that has some other systematic way of giving back or being socially responsible. If so, congratulations! You rock. You are part of the future, and part of making our economy more humane and sustainable. You should go through this exercise to see if there’s anything you want to tweak or just to revisit what you’re doing while we’re in this “getting to know yourself” section of brand strategizing.
<br>
Before we go any further, let me say that this section is an exploration, not a guilt trip. There is a bevy of reasons you might not be able to incorporate any aspects of social entrepreneurship into your business — especially if you’re on shaky financial footing. That’s ok. It’s still interesting to think about what you might be able to do someday to “give back” when you’re raking in the bucks.", book_id: b0.id)

b0_p3 = Page.create(number: 4, title: 'The what', description: "Phew! Things are about to get a whole lot more concrete. Let’s spiral back down to the every day stuff.", book_id: b0.id)

b0_p4 = Page.create(number: 5, title: 'The who (quite broadly)', description: "Thinking back to your answers for The Why questions, and using informal language or demographic descriptors (or both), take some educated guesses as to the answers to the questions in this section. If you find you’ve written down anything overly general, try to go back and list some specific examples or subcategories.
<br>
If you’re in a business like Martin’s, where there’s a lot of different customers in and out of his café everyday, you can make a point to observe and try to categorize trends in types of customers. 
<br>
If your business has only a few clients and they turn over slowly (like Josephine’s or Arturo’s practices), think back on all the clients you’ve had in the past and see if there are any similarities you can generalize. 
<br>
If you’re in a business that operates totally or mostly online, you may not know much about what your customers are like, beyond they’re first name and email address. In this case, try to extrapolate backwards, taking your best guess at what your people are like based on what they’re buying from you, or perhaps your interactions with them on social media and the like. This same advice goes for you if you haven’t launched yet. Contemplate who would or should be your audience(s), based on what you’re offering.", book_id: b0.id)

b0_p5 = Page.create(number: 6, title: 'The who: the ecosystem', description: "Thinking of the potential audiences for your offerings that you noted in Exercise 5, think about what their worlds look like. You may not know, but take some guesses (you may find that your customers are like yourself and you can answer the questions as you). Later, you can validate these guesses through experience and/or research (like, asking them informally or in a survey). If you have many diverse audiences, choose one or two to focus on here.", book_id: b0.id)

b0_p6 = Page.create(number: 7, title: 'The who: narrowing in', description: "Personas are a tool commonly used by designers, web/UX developers and branding folks to help understand a business’s audiences and craft more tailored and successful experiences for them. They are, basically, pretend customers (or users, or clients). In making them as real as possible, you’re better able to project and perceive your business from the outside. 
<br>
The idea is born out of human-centered design, or user interaction design. Instead, for example, of creating a communications piece for your business that looks like your taste and contains the information in the that you want to put out there, you consult (or imagine) a constituent of each of your audiences and design what they would want to see and provide the information they would want to know. 
<br>
There are lots of ways to create personas, but the key is getting into an empathetic, walk-a-mile-in-someone’s-moccasins mindset. 
<br>
You’ll want to create one persona for each of your audiences, and any significantly different segments thereof. 
", book_id: b0.id)

b0_p7 = Page.create(number: 8, title:"Competition and differentiation", description: "...", book_id: b0.id)

b0_p8 = Page.create(number: 9, title:"Personal persona", description: "Having looked at what makes your company special, it’s time to get to know it even better. We’re going to do one more persona — but this time you’re going to turn the camera lens on yourself. 
<br>
Pretend that your company (your brand) is a person. You may need to suspend disbelief here and there for this and use your imagination. Going through these persona questions, see what your brand is like. 
", book_id: b0.id)

b0_p9 = Page.create(number: 10, title:"Brand personality prompts: taking the temperature", description: "Building a brand persona was just the tip of the iceberg. Now we’re really going to dig in. What’s your brand’s personality? ", book_id: b0.id)

b0_p10 = Page.create(number: 11, title:"Brand personality prompts: zeroing in", description: "I’m going to encourage you to get a little crafty here or at least a little office supply-y. While, if you’re doing this by yourself, you can kind of cheat and not do the rigmarole with index cards that I’m about to describe, if you’re working with two or more people, you should really take that extra step, as it will make the discussion easier and more dynamic. 
<br>
Here’s what you do. Get a pack of index cards or a whole mess of torn up scrap paper. On each card, write one of the words from the following list. Save a bunch of blank cards and keep them handy. You might also want a Sharpie. You don’t need one, but you know, Sharpies always make things more fun.
", book_id: b0.id)


b0_p11 = Page.create(number: 12, title:"Positioning", description: "In the great muck of jargon out there, people often talk of branding and positioning in ways that overlap, flipflop and occasionally conflict. Some people will say positioning is the whole big deal in and of itself and that branding is, basically, your logo. 
<br>
In fact, people both in branding and in the business/startup worlds like to talk a whole lot about positioning and some get just appallingly oblique about it. You’ll hear things like “optimal brand positioning involves defining and communicating the competitive frame-of-reference and ascertaining points-of-parity and points-of-difference”. Have you become disinterested in positioning yet?
<br>
Personally, I accord branding the more queenly status in the hierarchy and keep the definition of positioning focused and simple. Positioning is where your brand is in the landscape relative to your competitors. This “where” can be on any number of spectrums of comparison. Some may be factual, like your price point. Others may be more subjective, emotional or even ethereal. Is yours a luxury brand or an everyday brand? Is it urban or suburban? Exciting or practical? 
<br>
This is probably starting to sound familiar. Part of the point of figuring out where your brand is, in and of itself, on various spectra, is to know (or to decide) how to position it against where other brands are. You choose the most relevant spectra (usually plotting two against each other for a more nuanced exploration) and then place your brand somewhere where there’s a hole left by others. 
<br>
If your brand falls too close to anyone else on the graph (your competitors), you’ll probably want to make some adjustments to how you conceptualize, talk about and/or market yourself. This kind of realization that you’re overlapping too directly with the competition can even be a great impetus for innovation — what can you develop that they don’t have?
<br>
Like branding on the whole, you can’t 100% affect what your positioning is. People will make their own judgments — but they will make them based on signals you put out there, like what your visuals look like, where your product is sold, its price, where it gets talked about and by whom. 
<br>
Think of shampoos. There’s a 99¢ faux-strawberry-scented VO5 available at most drugstores and then there are $50 bottles of sophisticatedly herbal Aveda, sold only in salons. You can bet the ingredients in those bottles don’t actually have a $49 cost differential to the companies — but the way each brand is positioned makes the difference between the prices. 
<br>
That’s not to say that the positioning strategy of one of these shampoos is better than the other’s. They’re going after different things and are each successful in their own ways. And that’s the thing with positioning — there are probably lots of choices that could work for you. You just need to make a decision and stick to it consistently for long enough to see if it works. (Try, analyze, and then change as needed.) It’s more “know thyself” stuff. 
", book_id: b0.id)

b0_p12 = Page.create(number: 13, title:"Brand voice", description: ".Looking back at the 6 descriptors your choose in Exercise 11, think about how a person (or a brand) fitting that description, would talk and write. What’s their style? Casual, formal, slangy, jargony, down-to-earth, jokey, witty, clever, petulant, metaphorical, whimsical, straightforward, literary, affected, simple, direct?
", book_id: b0.id)

b0_p13 = Page.create(number: 14, title:"The mission, the vision and another visit to the elevator", description: "A mission statement is a brief statement of your company’s raison d’être. Depending on what kind of business (private, public, non-profit, mission-driven, solo, team) you might compose and use it differently. It can include your purpose, goals, ethics and standards for treating employees and your audiences. It might be a more generalized promise of what your company is going to do and does. 
<br>
We’re not going to get too bogged down on phraseology and perfection here, because, ultimately, the way your brand speaks to its audiences, what it actually does and the quality of its goods and services are more important than a few sentences that try to sum it up. It can be useful internally, and it can be used sometimes, if well-crafted, compelling and informative in places like an annual report or “mission” page on a website, but it doesn’t have to be. Unless someone is making  you write an old-fashioned formal business plan, you might not even really need a formal mission statement — so long as you, informally, know what you’re doing and why (which you should, having worked through exercises 1-13).
<br>
(You may already have a mission statement — take Exercise 14 to evaluate it in the light of everything we’ve discussed so far and tweak or rewrite it if needed.)
", book_id: b0.id)

b0_p14 = Page.create(number: 15, title:"Gathering your guidelines", description: "Here’s where we pull it all together. Get excited!
<br>
Collect a summary of info about your brand here for easy future reference. This can be an end in and of itself, or you can make this a basis of a more formal brand guide that you add to over time in a document or an old fashion binder-type-device. 
<br>
Feel free to let the process of transcribing lead you to any further distillations and refinements that might occur to you. 
", book_id: b0.id)









Question.delete_all
b0_p0_q0 = Question.create(title: 'My business name (or working title)', format: 'item', page_id: b0_p0.id)
b0_p0_q1 = Question.create(title: 'What do you want to get out of this process of branding? (Goals, questions to answer, expresions of existential angst...)', format: 'item', page_id: b0_p0.id)

b0_p1_q0 = Question.create(title: 'I do this work because (try to list at least 5 reasons)', format: 'list', page_id: b0_p1.id)
b0_p1_q1 = Question.create(title: 'What are the personal values that I feel most strongly about? (List as many as you want.', format: 'list', page_id: b0_p1.id)
b0_p1_q2 = Question.create(title: 'Which personal values are already in your business? How do they translate?', format: 'list', page_id: b0_p1.id)
b0_p1_q3 = Question.create(title: "Which personal values that you listed seem out of alignment with your business or don't translate across context? Why do they seem disconnected?", format: 'essay', page_id: b0_p1.id)
b0_p1_q4 = Question.create(title: "Are there values at work in your business that you don't share personally?", format: 'essay', page_id: b0_p1.id)


b0_p2_q0 = Question.create(title: "this page will need a custom format for questions (flow chart)", format: 'essay', page_id: b0_p2.id)

 





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
