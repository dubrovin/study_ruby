# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(
    login: "login_dada", first_name: "first_name_da", last_name: "last_name_da")
user.posts.create(title: "first_user_post", text: "blabla")
user.posts.create(title: "first_user_post2", text: "blabla")
user.posts.create(title: "first_user_post3", text: "blabla")
# each is iterator
user.posts.each do |post|
    5.times do |i|
        post.comments.create(
            title: "title #{i + 1}", message: "message #{i + 1}")
    end

end