require 'rails_helper'

describe User do
  it 'has an email' do
    user = FactoryBot.create(:user)
    expect(user.email).to eq 'hello@gmail.com'
  end
end
