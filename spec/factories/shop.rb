FactoryBot.define do
  factory :shop, class: 'Shop' do 
    title { FFaker::Lorem.word }
    description { FFaker::Lorem.paragraph }
    admin { create(:admin) }
  end
end