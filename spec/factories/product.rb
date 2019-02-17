FactoryBot.define do
  factory :product, class: 'Product' do 
    title { FFaker::Lorem.word }
    description { FFaker::Lorem.paragraph }
    price { rand(1000) }
    discount { rand(100) }
    text_after_purchase { FFaker::Lorem.paragraph }
    shop { create(:shop) }
  end
end