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

# グルメ検索&予約アプリ

## アプリケーションの概要
このアプリでできること
* ユーザーが飲食店を場所やジャンルなどを指定して探すことができる
* ユーザーが飲食店を予約できる
* ユーザーが飲食店の口コミを投稿できる
* ユーザーが自分の店を登録できる

## URL

## テスト用アカウント

## このアプリの利用方法

## このアプリ制作の意図
#### ターゲット
* 女性をデートする前の男性
* 学生もしくは２０代の独身サラリーマン

#### ターゲットの悩み
* 女性と食事に行くことになったけどどんな店に誘えばいいか分からない
* 初デートにオススメな店を知りたい
* 安くてお洒落なお店を知りたい

これらの課題を解決するためにこのアプリを作成しました。


## 要件定義
|機能|目的|詳細|ユーザーストーリー|
|お店を検索する機能|ユーザーがデートに使える店を<br>探せるようにするため|・キーワードを入力して検索できる機能<br>・エリアを指定して検索できる機能<br>・ジャンルを選択して検索できる機能<br>・利用シーンを選択して検索できる機能<br>・店の特徴を選択して検索できる機能<br>・検索にヒットした店を一覧表示する機能<br>・各店舗の詳細情報を表示する機能|ユーザーは女性受けする店を探すことができてデートに成功する|
|お店を予約する機能|ユーザーがお店を予約できるようにするため|・予約フォーム機能|ユーザーはお店を予約できて女性からの印象もアップする|
|口コミ投稿&閲覧機能|ユーザー同士で口コミを共有できるようにするため|・口コミ投稿機能<br>・各店舗の口コミ一覧表示機能|ユーザーは予約する前に口コミを確認できて<br>店選びで失敗しなくなる|
|店舗登録機能|ユーザーが自分お店をアプリ内に掲載するため|店舗登録フォーム機能|店舗運営ユーザーはアプリから集客できて売り上げも上がる|

## 実装機能の特徴
#### お店を検索する機能
* 恋愛に特化した条件検索ができるように実装<br>（利用シーンから探す場合…「初デート」「記念日」「彼女の誕生日」「合コン」など）

#### お店を予約する機能
* お店一覧ページ&お店詳細ページに予約ページのリンクを記載
* 任意で予約先の店に要望を伝えれるフォームを実装

#### 口コミ投稿&閲覧機能
* 各店舗の口コミ一覧ページを実装

## 今後実装予定の機能
* お店の詳細ページにメニュー一覧を表示できる機能
* お店の詳細ページにマップを表示する機能

## ER図

## ローカルでの動作方法

# テーブル設計

## users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :reservations
- has_many :restaurants
- has_many :reviews


## reservations テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|date_time|string|null: false|
|number|string|null: false|
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
|genre|string|null: false|
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
|scene|string|null: false|
|feature|string|null: false|
|drink_id|integer|
|food_id|integer|
|homepage|string|
|user|references|foreign_key: true|
### Association
- belongs_to :user
- has_many :reservations
- has_many :reviews


## reviews テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|title|string|null: false|
|content|text|null: false|
|visit_day|string|
### Association
- belongs_to :user
- belongs_to :restaurant



