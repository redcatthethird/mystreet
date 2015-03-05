# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shop.create(name: "Friendly Books", password: "pa55word", password_confirmation: "pa55word")
Shop.create(name: "Loyal Pets", password: "42", password_confirmation: "42")
Shop.create(name: "Tremendous Tech", password: "foobar", password_confirmation: "foobar")
Shop.create(name: "Bitchin' Books", password: "admin", password_confirmation: "admin")
Shop.create(name: "okBooks", password: "12345", password_confirmation: "12345")
Shop.create(name: "Butch's Butchers", password: "qwerty", password_confirmation: "qwerty")
Shop.create(name: "Emporium", password: "asdf", password_confirmation: "asdf")
Shop.create(name: "Rhaegar's Rubies", password: "password", password_confirmation: "password")
Shop.create(name: "Green Grocers", password: "cabbage", password_confirmation: "cabbage")

Customer.create(name: "Yolanda", email: "yo@gmail.com")
Customer.create(name: "Vincent", email: "vinny@hotmail.com")
Customer.create(name: "Jules", email: "JulesWinn@gmail.com")
Customer.create(name: "Marvin", email: "Mar1n@gmail.com")
Customer.create(name: "Zed", email: "manLove@hotmail.com")
Customer.create(name: "Butch", email: "hogWild@msn.com")
Customer.create(name: "Mia", email: "Miamia@gmail.com")

Product.create(name: "Cabbage", price: 3.00, quantity: 42, shop_id: 1)
Product.create(name: "Meat", price: 12.00, quantity: 7, shop_id: 2)
Product.create(name: "Necklace", price: 456.00, quantity: 2, shop_id: 3)
Product.create(name: "Owl", price: 250.00, quantity: 7, shop_id: 4)
Product.create(name: "Boat", price: 2000.00, quantity: 1, shop_id: 5)
Product.create(name: "Lemon", price: 2.00, quantity: 1, shop_id: 1)
Product.create(name: "Horse", price: 1500.00, quantity: 4, shop_id: 4)

Sale.create(quantity: 3, product_id: 1, customer_id: 1)
Sale.create(quantity: 2, product_id: 2, customer_id: 1)
Sale.create(quantity: 6, product_id: 4, customer_id: 5)
Sale.create(quantity: 2, product_id: 2, customer_id: 4)
Sale.create(quantity: 4, product_id: 1, customer_id: 3)