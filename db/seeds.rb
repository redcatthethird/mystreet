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
Shop.create(name: "", password: "", password_confirmation: "")
Shop.create(name: "", password: "", password_confirmation: "")
Shop.create(name: "", password: "", password_confirmation: "")
Shop.create(name: "", password: "", password_confirmation: "")
Shop.create(name: "", password: "", password_confirmation: "")
Shop.create(name: "", password: "", password_confirmation: "")
Shop.create(name: "", password: "", password_confirmation: "")

Customer.create(name: "", email: "",)
Customer.create(name: "", email: "",)
Customer.create(name: "", email: "",)
Customer.create(name: "", email: "",)
Customer.create(name: "", email: "",)
Customer.create(name: "", email: "",)
Customer.create(name: "", email: "",)
Customer.create(name: "", email: "",)

Product.create(name: "", price: "", quantity: "", shop_id: "", integer: "")
Product.create(name: "", price: "", quantity: "", shop_id: "", integer: "")
Product.create(name: "", price: "", quantity: "", shop_id: "", integer: "")
Product.create(name: "", price: "", quantity: "", shop_id: "", integer: "")
Product.create(name: "", price: "", quantity: "", shop_id: "", integer: "")
Product.create(name: "", price: "", quantity: "", shop_id: "", integer: "")

Sale.create(quantity: "", product_id: "", customer_id: "")
Sale.create(quantity: "", product_id: "", customer_id: "")
Sale.create(quantity: "", product_id: "", customer_id: "")
Sale.create(quantity: "", product_id: "", customer_id: "")
Sale.create(quantity: "", product_id: "", customer_id: "")
Sale.create(quantity: "", product_id: "", customer_id: "")
Sale.create(quantity: "", product_id: "", customer_id: "")