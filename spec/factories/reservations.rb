FactoryBot.define do
    factory :reservation do
        date_time {'aaa'}
        number {'aaa'}
        lastname {'あああ'}
        firstname {'いいい'}
        lastname_kana {'アアア'}
        firstname_kana {'イイイ'}
        request {'aaa'}
        user_id {8}
        restaurant_id {2}
        association :user
        association :restaurant
    end
end