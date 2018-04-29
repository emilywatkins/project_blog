require 'rails_helper'

# context block to dry up code
# describe 'post page' do
#   context 'when user is an admin' do
#     before(:each) do
#       @admin = create(:user, email: 'admin@gmail.com', is_admin: true)
#     end
#
#     it 'can edit posts' do
#       ...
#     end
#
#   end
#
#   context 'when user is not an admin' do
#     before(:each) do
#       @user = create(:user, email: 'user@gmail.com')
#     end
#
#     it "cannot edit posts" do
#       ...
#     end
#   end
# end

def login(email, password)
  visit '/users/sign_in'
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
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
