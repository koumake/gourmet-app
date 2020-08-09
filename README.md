# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|icon|string|null: false|
### Association
- has_many :reservations
- has_many :restaurants
- has_many :reviews


## reservations テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|date_time|string|null: false|
|number|string|null: false|
|course_id|integer|null: false|
|firstname|string|null: false|
|lastname|string|null: false|
|firstname_alias|string|null: false|
|lastname_alias|string|null: false|
|request|text|
|user|references|null: false, foreign_key: true|
|restaurant|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :restaurant


## restaurants テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|name|string|null: false|
|name_alias|string|null: false|
|tel|string|null: false|
|prefecture|null: false, default: 0|
|city_address|string|null: false|
|building_name|string|
|map|string|null: false|
|genre_id|integer|null: false|
|reserve_id|integer|null: false|
|transportation|string|null: false|
|hours|text|null: false|
|holiday|string|null: false|
|budget_dinner_id|integer|null: false|
|budget_lunch_id|integer|null: false|
|seats_number|integer|
|seats_number|string|
|private_room_id|integer|
|private_room|string|
|charter_id|integer|
|smoking_id|integer|
|feature_id|integer|
|drink_id|integer|
|food_id|integer|
|homepage|string|
### Association
- has_many :users
- has_many :reservations
- has_many :reviews


## restaurant_users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|user|references|null: false, foreign_key: true|
|restaurant|references|null: false, foreign_key: ture|
### Association
- belongs_to :user
- belongs_to :restaurant



## reviews テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|title|string|null: false|
|content|text|null: false|
|img|string|
|visit_day|string|
### Association
- belongs_to :user
- belongs_to :restaurant



