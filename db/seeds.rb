require 'random_data'

# Create Posts
5.times do
	Blog.create!(
		title:  RandomData.random_sentence,
		description:   RandomData.random_paragraph,
		owner: RandomData.random_name
	)
end
blogs = Blog.all

# Create Comments
10.times do
	blogs.each do |blog|
		Post.create!(
			title:  RandomData.random_sentence,
			description:   RandomData.random_paragraph,
			content: RandomData.random_paragraph,
			author: RandomData.random_name
	end
end
posts = Post.all

10.times do
	Comment.create!(
		post: posts.sample,
		content: RandomData.random_paragraph,
		author: RandomData.random_name
	)
end

puts "Seed finished"
puts "#{Blog.count} blogs created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"