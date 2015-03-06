# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shop.create(id: 1, name: "Friendly Books", password: "pa55word", password_confirmation: "pa55word")
Shop.create(id: 2, name: "Loyal Pets", password: "scoobydoo", password_confirmation: "scoobydoo")
Shop.create(id: 3, name: "Tremendous Tech", password: "foobar", password_confirmation: "foobar")

Customer.create(id: 1234567, name: "Yolanda", email: "yolanda@gmail.com")
Customer.create(id: 5432567, name: "Sally", email: "s.ally@yahoo.co.uk")
Customer.create(id: 5457324, name: "Ben", email: "benny@ben.me")

Product.create(id: 1, name: "Война и Мир", price: 7.00, quantity: 10, shop_id: 1)
Product.create(id: 2, name: "吾輩は猫である", price: 10.00, quantity: 5, shop_id: 1)
Product.create(id: 6, name: "The Art of Computer Programming", price: 100.00, quantity: 2, shop_id: 1)
Product.create(id: 7, name: "Practical Common Lisp", price: 30.00, quantity: 4, shop_id: 1)

Product.create(id: 3, name: "Cat food", price: 0.68, quantity: 20, shop_id: 2)
Product.create(id: 4, name: "Hay", price: 2.00, quantity: 40, shop_id: 2)
Product.create(id: 5, name: "Dog treats", price: 1.34, quantity: 30, shop_id: 2)

Product.create(id: 8, name: "Asus Z97-PRO Motherboard", price: 150.00, quantity: 15, shop_id: 3)
Product.create(id: 9, name: "Intel Core i5 4690k", price: 180.00, quantity: 23, shop_id: 3)
Product.create(id: 10, name: "Motorola Moto G", price: 125.00, quantity: 32, shop_id: 3)

Sale.create(quantity: 1, product_id: 2, customer_id: 1234567)
Sale.create(quantity: 5, product_id: 3, customer_id: 1234567)
Sale.create(quantity: 1, product_id: 8, customer_id: 5432567)
Sale.create(quantity: 1, product_id: 6, customer_id: 5432567)
Sale.create(quantity: 1, product_id: 10, customer_id: 5457324)
Sale.create(quantity: 1, product_id: 5, customer_id: 5457324)
