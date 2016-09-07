require 'rails_helper'

RSpec.describe BlogsController, type: :controller do
  let(:my_blog) {Blog.create!(title: RandomData.random_sentence, description: RandomData.random_paragraph, owner: RandomData.random_name)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  it "assigns [my_blog] to @blogs" do
      get :index
      expect(assigns(:blogs)).to eq([my_blog])
    end
  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
