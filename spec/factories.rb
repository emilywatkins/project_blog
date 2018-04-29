FactoryBot.define do
  factory(:user) do
    email('hello@gmail.com')
    password('password')
    is_admin(false)
  end
end
