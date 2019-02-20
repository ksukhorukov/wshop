FactoryBot.define do
  factory :cart, class: 'Cart' do 
    user { create(:user) }
  end
end