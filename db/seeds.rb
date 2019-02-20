# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Admin.create(name: 'admin', email: 'admin@shop.ru', password: '1234567', password_confirmation: '1234567')

shop = Shop.create(admin: admin, title: 'Mega Shop', description: 'digital products')

(1..10).each do |n|
	product = Product.create(shop: shop, 
													 title: FFaker::Book.title,
													 description: FFaker::Lorem.paragraph,
													 price: rand(1000),
													 discount: rand(100),
													 instock: true,
													 text_after_purchase: 'Congratulations!')
end