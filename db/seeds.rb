User.delete_all
a = User.create("username" => "sterling", "name" => "Roger Sterling", "phone" => "9876543210", "password" => "12345")
b = User.create("username" => "draper", "name" => "Don Draper", "phone" => "9876543210", "password" => "12345")
c = User.create("username" => "benson", "name" => "Bob Benson", "phone" => "9876543210", "password" => "12345")
d = User.create("username" => "olson", "name" => "Peggy Olson", "phone" => "9876543210", "password" => "12345")
e = User.create("username" => "harris", "name" => "Joan Harris", "phone" => "9876543210", "password" => "12345")
f = User.create("username" => "cooper", "name" => "Bert Cooper", "phone" => "9876543210", "password" => "12345")

Task.delete_all
mow = Task.create("buyer_id" => a.id, "seller_id" => b.id, "price_in_cents" => "2000", "description" => "Mow my lawn", "address" => "1629 Orrington Ave.
Evanston Il 60201", "start" => "2014-05-10 10:00", "end" => "2014-05-10 15:00", "task_completion" => "1", "ratingbybuyer" => "4", "commentbybuyer" => "Missed some spots.", "ratingbyseller" => "5", "commentbyseller" => "Fun task!")
kids = Task.create("buyer_id" => b.id, "seller_id" => c.id, "price_in_cents" => "5000", "description" => "Watch my kids for 3 hours", "address" => "531 Davis St.
Evanston IL 60201", "start" => "2014-05-11 19:00", "end" => "2014-05-10 22:00", "task_completion" => "1", "ratingbybuyer" => "5", "commentbybuyer" => "My kids were still alive when I got home.", "ratingbyseller" => "3", "commentbyseller" => "No booze in the house.")
laundry = Task.create("buyer_id" => c.id, "seller_id" => d.id, "price_in_cents" => "800", "description" => "Pick up my laundry", "address" => "1511 Sherman Ave.
Evanston IL 60201", "start" => "2014-05-12 10:00", "end" => "2014-05-12 15:00", "task_completion" => "1", "ratingbybuyer" => "5", "commentbybuyer" => "Great service.", "ratingbyseller" => "5", "commentbyseller" => "Thanks for the generous tip!")
office = Task.create("buyer_id" => d.id, "seller_id" => e.id, "price_in_cents" => "2000", "description" => "Reorganize my office", "address" => "1755 Maple Ave.
Evanston Il 60201", "start" => "2014-05-13 08:00", "end" => "2014-05-13 12:00", "task_completion" => "1", "ratingbybuyer" => "3", "commentbybuyer" => "Hid all my things.", "ratingbyseller" => "4", "commentbyseller" => "Meh.")
trash = Task.create("buyer_id" => e.id, "seller_id" => f.id, "price_in_cents" => "800", "description" => "Take out the trash", "address" => "919 Grove St.
Evanston Il 60201", "start" => "2014-05-14 13:00", "end" => "2014-05-14 14:00", "task_completion" => "1", "ratingbybuyer" => "4", "commentbybuyer" => "Complained about the smell.", "ratingbyseller" => "1", "commentbyseller" => "Did not pay me for my work.")
manicure = Task.create("buyer_id" => f.id, "seller_id" => a.id, "price_in_cents" => "3000", "description" => "Give me a manicure", "address" => "1630 Orrington Ave.
Evanston Il 60201", "start" => "2014-05-15 16:00", "end" => "2014-05-15 18:00", "task_completion" => "1")
piano = Task.create("buyer_id" => a.id, "seller_id" => d.id, "price_in_cents" => "5000", "description" => "Tune my piano", "address" => "1629 Orrington Ave.
Evanston Il 60201", "start" => "2014-05-10 10:00", "end" => "2014-05-10 15:00", "task_completion" => "1", "ratingbybuyer" => "5", "commentbybuyer" => "Great job!", "ratingbyseller" => "3", "commentbyseller" => "Piano hasn't been tuned in a decade.")
program = Task.create("buyer_id" => b.id, "seller_id" => e.id, "price_in_cents" => "7000", "description" => "Teach me programming", "address" => "531 Davis St.
Evanston IL 60201", "start" => "2014-05-14 19:00", "end" => "2014-05-14 22:00", "task_completion" => "1", "ratingbybuyer" => "4", "commentbybuyer" => "I learnt a lot!", "ratingbyseller" => "3", "commentbyseller" => "Easily distracted.")
wifi = Task.create("buyer_id" => c.id, "seller_id" => f.id, "price_in_cents" => "2500", "description" => "Get my wifi to work", "address" => "1511 Sherman Ave.
Evanston IL 60201", "start" => "2014-05-15 10:00", "end" => "2014-05-15 15:00", "task_completion" => "1", "ratingbybuyer" => "3", "commentbybuyer" => "Didn't tell me the password.", "ratingbyseller" => "4", "commentbyseller" => "Very handsome.")
training = Task.create("buyer_id" => d.id, "seller_id" => a.id, "price_in_cents" => "6000", "description" => "Personal training session", "address" => "1755 Maple Ave.
Evanston Il 60201", "start" => "2014-05-16 08:00", "end" => "2014-05-16 12:00", "task_completion" => "1", "ratingbybuyer" => "4", "commentbybuyer" => "Great workout!", "ratingbyseller" => "5", "commentbyseller" => "Best client!")
walk = Task.create("buyer_id" => e.id, "seller_id" => b.id, "price_in_cents" => "800", "description" => "Walk the dog", "address" => "919 Grove St.
Evanston Il 60201", "start" => "2014-05-17 13:00", "end" => "2014-05-17 14:00", "task_completion" => "1", "ratingbybuyer" => "5", "commentbybuyer" => "My dog loved him!", "ratingbyseller" => "3", "commentbyseller" => "Dog needs a bath.")
car = Task.create("buyer_id" => a.id, "seller_id" => c.id, "price_in_cents" => "2000", "description" => "Wash my car", "address" => "1629 Orrington Ave.
Evanston Il 60201", "start" => "2014-06-16 10:00", "end" => "2014-06-16 15:00", "task_completion" => "0")
dinner = Task.create("buyer_id" => b.id, "seller_id" => d.id, "price_in_cents" => "8000", "description" => "Make dinner for 6", "address" => "531 Davis St.
Evanston Il 60201", "start" => "2014-06-17 16:00", "end" => "2014-06-17 19:00", "task_completion" => "0")
flowers = Task.create("buyer_id" => c.id, "seller_id" => e.id, "price_in_cents" => "3000", "description" => "Plant flowers in my garden", "address" => "1511 Sherman Ave.
Evanston Il 60201", "start" => "2014-06-18 10:00", "end" => "2014-06-18 15:00", "task_completion" => "0")
grocery = Task.create("buyer_id" => d.id, "price_in_cents" => "1500", "description" => "Grocery shopping at Whole Foods", "address" => "1755 Maple Ave.
Evanston Il 60201", "start" => "2014-06-19 15:00", "end" => "2014-06-19 16:00", "task_completion" => "0")
bath = Task.create("buyer_id" => e.id, "price_in_cents" => "2000", "description" => "Bathe my German Shepherd", "address" => "919 Grove St.
Evanston Il 60201", "start" => "2014-06-20 13:00", "end" => "2014-06-20 15:00", "task_completion" => "0")
computer = Task.create("buyer_id" => f.id, "price_in_cents" => "3000", "description" => "Repair my computer", "address" => "1630 Orrington Ave.
Evanston Il 60201", "start" => "2014-06-21 08:00", "end" => "2014-06-21 11:00", "task_completion" => "0")

Message.delete_all
Message.create("task_id" => kids.id, "created_at" => "2014-05-05 10:00", "user_id" => c.id, "content" => "How many of them?")
Message.create("task_id" => kids.id, "created_at" => "2014-05-05 12:00", "user_id" => b.id, "content" => "4")
Message.create("task_id" => kids.id, "created_at" => "2014-05-05 14:00", "user_id" => c.id, "content" => "When is their bedtime?")
Message.create("task_id" => kids.id, "created_at" => "2014-05-05 16:00", "user_id" => b.id, "content" => "9pm")
Message.create("task_id" => laundry.id, "created_at" => "2014-05-06 14:00", "user_id" => d.id, "content" => "What are the items?")
Message.create("task_id" => laundry.id, "created_at" => "2014-05-06 16:00", "user_id" => c.id, "content" => "One jacket, two pairs of pants")
Message.create("task_id" => mow.id, "created_at" => "2014-05-06 14:00", "user_id" => b.id, "content" => "Do you have a lawnmower?")
Message.create("task_id" => mow.id, "created_at" => "2014-05-06 16:00", "user_id" => a.id, "content" => "Yup.")
Message.create("task_id" => program.id, "created_at" => "2014-05-06 16:00", "user_id" => e.id, "content" => "Which language do you want to learn?")
Message.create("task_id" => program.id, "created_at" => "2014-05-06 17:00", "user_id" => b.id, "content" => "Ruby on Rails?")
Message.create("task_id" => program.id, "created_at" => "2014-05-06 18:00", "user_id" => e.id, "content" => "Ok")
