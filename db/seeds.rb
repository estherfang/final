Buyer.delete_all
a = Buyer.create("name" => "Roger Sterling", "phone" => "9876543210", "password" => "12345")
b = Buyer.create("name" => "Don Draper", "phone" => "9876543210", "password" => "12345")
c = Buyer.create("name" => "Bob Benson", "phone" => "9876543210", "password" => "12345")
d = Buyer.create("name" => "Peggy Olson", "phone" => "9876543210", "password" => "12345")
e = Buyer.create("name" => "Joan Harris", "phone" => "9876543210", "password" => "12345")
f = Buyer.create("name" => "Bert Cooper", "phone" => "9876543210", "password" => "12345")

Seller.delete_all
g = Seller.create("name" => "Sheldon Cooper", "phone" => "9876543210", "password" => "12345")
h = Seller.create("name" => "Penny", "phone" => "9876543210", "password" => "12345")
i = Seller.create("name" => "Amy Farrah Fowler", "phone" => "9876543210", "password" => "12345")

Task.delete_all
j = Task.create("buyer_id" => a.id, "seller_id" => g.id, "price_in_cents" => "2000", "description" => "Mow my lawn", "address" => "1629 Orrington Ave.
Evanston Il 60201", "start" => "2014-06-10 10:00", "end" => "2014-06-10 15:00", "task_completion" => "1")
k = Task.create("buyer_id" => b.id, "seller_id" => h.id, "price_in_cents" => "5000", "description" => "Watch my kids for 3 hours", "address" => "531 Davis St.
Evanston IL 60201", "start" => "2014-06-11 19:00", "end" => "2014-06-10 22:00", "task_completion" => "1")
l = Task.create("buyer_id" => c.id, "seller_id" => i.id, "price_in_cents" => "800", "description" => "Pick up my laundry", "address" => "1511 Sherman Ave.
Evanston IL 60201", "start" => "2014-06-12 10:00", "end" => "2014-06-12 15:00", "task_completion" => "1")
m = Task.create("buyer_id" => d.id, "seller_id" => h.id, "price_in_cents" => "2000", "description" => "Reorganize my office", "address" => "1755 Maple Ave.
Evanston Il 60201", "start" => "2014-06-13 08:00", "end" => "2014-06-13 12:00", "task_completion" => "1")
n = Task.create("buyer_id" => e.id, "seller_id" => i.id, "price_in_cents" => "800", "description" => "Take out the trash", "address" => "919 Grove St.
Evanston Il 60201", "start" => "2014-06-14 13:00", "end" => "2014-06-14 14:00", "task_completion" => "1")
o = Task.create("buyer_id" => f.id, "seller_id" => g.id, "price_in_cents" => "3000", "description" => "Give me a manicure", "address" => "1630 Orrington Ave.
Evanston Il 60201", "start" => "2014-06-15 16:00", "end" => "2014-06-15 18:00", "task_completion" => "1")
Task.create("buyer_id" => a.id, "seller_id" => i.id, "price_in_cents" => "2000", "description" => "Mow my lawn", "address" => "1629 Orrington Ave.
Evanston Il 60201", "start" => "2014-06-16 10:00", "end" => "2014-06-16 15:00", "task_completion" => "0")
Task.create("buyer_id" => b.id, "seller_id" => g.id, "price_in_cents" => "8000", "description" => "Make dinner for 6", "address" => "531 Davis St.
Evanston Il 60201", "start" => "2014-06-17 16:00", "end" => "2014-06-17 19:00", "task_completion" => "0")
Task.create("buyer_id" => c.id, "seller_id" => h.id, "price_in_cents" => "3000", "description" => "Plant flowers in my garden", "address" => "1511 Sherman Ave.
Evanston Il 60201", "start" => "2014-06-18 10:00", "end" => "2014-06-18 15:00", "task_completion" => "0")
Task.create("buyer_id" => d.id, "price_in_cents" => "1500", "description" => "Grocery shopping at Whole Foods", "address" => "1755 Maple Ave.
Evanston Il 60201", "start" => "2014-06-19 15:00", "end" => "2014-06-19 16:00", "task_completion" => "0")
Task.create("buyer_id" => e.id, "price_in_cents" => "2000", "description" => "Bathe my German Shepherd", "address" => "919 Grove St.
Evanston Il 60201", "start" => "2014-06-20 13:00", "end" => "2014-06-20 15:00", "task_completion" => "0")
Task.create("buyer_id" => f.id, "price_in_cents" => "3000", "description" => "Repair my computer", "address" => "1630 Orrington Ave.
Evanston Il 60201", "start" => "2014-06-21 08:00", "end" => "2014-06-21 11:00", "task_completion" => "0")

Seller_Rating.delete_all
Seller_Rating.create("task_id" => j.id, "rating" => "4", "comment" => "Missed some spots.")
Seller_Rating.create("task_id" => k.id, "rating" => "5", "comment" => "My kids were still alive when I got home.")
Seller_Rating.create("task_id" => l.id, "rating" => "5", "comment" => "Great service.")
Seller_Rating.create("task_id" => m.id, "rating" => "3", "comment" => "Hid all my things.")
Seller_Rating.create("task_id" => n.id, "rating" => "4", "comment" => "Complained about the smell.")

Buyer_Rating.delete_all
Buyer_Rating.create("task_id" => j.id, "rating" => "5", "comment" => "Fun task!")
Buyer_Rating.create("task_id" => k.id, "rating" => "3", "comment" => "No booze in the house.")
Buyer_Rating.create("task_id" => l.id, "rating" => "5", "comment" => "Thanks for the generous tip!")
Buyer_Rating.create("task_id" => m.id, "rating" => "4", "comment" => "Meh.")
Buyer_Rating.create("task_id" => n.id, "rating" => "1", "comment" => "Did not pay me for my work.")
