FactoryBot.define do
  factory :admin, class: 'Admin' do 
		email { "#{FFaker::Lorem::word}@test.com" }
		password { 'qwerty'}
		password_confirmation { 'qwerty' }
  end
end