require 'faker'

10.times do
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end

posts = Post.all
    
20.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end
    
p 'Nicely done Toly! Seeds have run'
p "#{Post.count} created"
p "#{Comment.count} created"
