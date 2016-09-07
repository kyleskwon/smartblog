require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:blog) { Blog.create!(title: "New Blog Title", description: "New Blog Description", owner: "New Blog Owner") }
  let(:post) { Post.create!(title: "New Post Title", description: "New Post Description", content: "New Blog Content", author: "New Post Author") }
 
  describe "attributes" do
    it "has title, description, content and author attributes" do
      expect(post).to have_attributes(title: "New Post Title", description: "New Post Description", content: "New Blog Content", author: "New Post Author")
    end
  end
end
