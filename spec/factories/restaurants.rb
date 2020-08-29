FactoryBot.define do
    factory :restaurant do
       
       name {'あああ'}
       name_alias {'アアア'}
       tel {'08081183865'}
       about {'aaaaaaaaaaaaaa'}
       prefecture {'あああああ'}
       city_address {'aaaa'}
       building_name {'aaaa'}
       genre {'寿司'}
       reserve_id {2}
       transportation {'aaa'}
       hours {'aaa'}
       holiday {'aaa'}
       budget_dinner_id {2}
       budget_lunch_id {2}
       seats_number {'aaa'}
       seats_number_explain {'aaa'}
       private_room_id {2}
       private_room_explain {'aaa'}
       charter_id {2}
       smoking_id {2}
       scene {'aaa'}
       feature {'aaa'}
       drink_id {2}
       food_id {2}
       area {'aaa'}
       user_id {2}
       association :user
    end
end