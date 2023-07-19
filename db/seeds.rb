# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



admin_user = Client.create!(email: 'esteban@admin.com', password: 'admin123', name: "Esteban admin", phone: 666444333, role: 1) #
admin_user.pfp.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'admin-avatar.png')), filename: 'admin-avatar.png', content_type: 'image/png')