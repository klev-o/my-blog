# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
User.destroy_all
Commentary.destroy_all

require 'ffaker'
#require "bcrypt"

hash_users = 10.times.map do
  email = FFaker::Internet.email
  {
      name: FFaker::Internet.user_name,
      email: email,
      password: email,
  }
end

users = User.create! hash_users

# binding.pry

users.first(7).each { |u| u.update creator: true }
users.first(2).each { |u| u.update moderator: true }

creators = User.where(creator: true)

hash_posts = 20.times.map do
  {
      title: FFaker::HipsterIpsum.paragraph,
      body: FFaker::HipsterIpsum.paragraphs,
      user: creators.sample,
      active: true
  }
end

posts = Post.create! hash_posts

hash_commentaries = 200.times.map do
  {
      body: FFaker::HipsterIpsum.paragraphs,
      user: users.sample,
      post: posts.sample,
      active: true
  }
end

Commentary.create! hash_commentaries