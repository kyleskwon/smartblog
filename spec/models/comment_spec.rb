require 'rails_helper'

RSpec.describe Comment, type: :model do
	let(:blog) { Blog.create!(title: "New Blog Title", description: "New Blog Description", owner: "New Blog Owner") }
  let(:post) { Post.create!(title: "New Post Title", description: "New Post Description", content: "New Blog Content", author: "New Post Author") }
  let(:comment) { Comment.create!(content: "New Comment Content", author: "New Comment Author") }

  describe "attributes" do
    it "has content and author attributes" do
      expect(comment).to have_attributes(content: "New Comment Content", author: "New Comment Author")
    end
  end
end
