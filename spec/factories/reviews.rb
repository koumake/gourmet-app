FactoryBot.define do
    factory :review do
       title {'aaa'}
       content {'aaa'}
       user_id {2}
       restaurant_id {2}
       association :restaurant
       association :user
    end
end