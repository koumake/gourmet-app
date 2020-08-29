FactoryBot.define do
    factory :user do
        nickname {'あああ'}
        email { Faker::Internet.email }
        password {'kou1997422'}
        password_confirmation {password}
    end
end