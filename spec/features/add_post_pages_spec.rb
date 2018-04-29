require 'rails_helper'

# instance of User where is_admin = true

def login(email, password)
  visit '/users/sign_in'
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
  # fill_in 'Password confirmation', :with => password
  click_button 'Log in'
end

describe "the add a post process" do
  before(:each) do
    @admin = FactoryBot.create(:user, :email => 'admin@gmail.com', :password => 'adminpassword', :is_admin => true)
  end

  it "adds a new post" do
    login('admin@gmail.com', 'adminpassword')
    visit posts_path
    click_link 'add a new post'
    fill_in 'Title', :with => 'Post title'
    fill_in 'Body', :with => 'Post body'
    click_on 'Create Post'
    expect(page).to have_content 'Post title'
  end

  it "gives error when no value is entered" do
    login('admin@gmail.com', 'adminpassword')
    visit new_post_path
    click_on 'Create Post'
    expect(page).to have_content 'errors'
  end

end
