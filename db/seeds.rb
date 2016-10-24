require 'random_data'

50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by(title: "This is a test of the emergency broadcast...", body: "This is a test of the emergency broadcast system...")
uniq_post = Post.find_by_title("This is a test of the emergency broadcast...")
Comment.find_or_create_by(post: uniq_post, body: "Had this been an actual emergency the noise you just heard...")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
