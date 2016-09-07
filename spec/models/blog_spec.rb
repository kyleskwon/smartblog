require 'rails_helper'

RSpec.describe Blog, type: :model do
  let(:blog) { Blog.create!(title: "New Blog Title", description: "New Blog Description", owner: "New Blog Owner") }
  describe "attributes" do
    it "has title, description and owner attributes" do
      expect(blog).to have_attributes(title: "New Blog Title", description: "New Blog Description", owner: "New Blog Owner")
    end
  end
end
