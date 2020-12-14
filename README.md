# README

# アプリケーション名：
旅ログ

# アプリケーション概要：
旅行の荷物リストの作成と、旅行先でのやることリストの作成ができる

# URL：
※まだ実施前

# テスト用アカウント：
※まだ実施前

# 利用方法：
旅行前に持っていくものリストを作成して、抜け漏れがないようにする。また、旅行中にやることリストも作成できるようにする

# 目指した課題解決：
ターゲットは２０〜３０歳の男女。一人旅に興味はあるが、旅行したい理由が漠然としているため、不安が優って１歩を踏み出せない人が多い。従って、一般的に存在する持ち物リスト化アプリに追加して、旅行先で実施するTodoリストを具体的に書く機能をつけることで、旅先での目的を明確にさせる事で能動的に楽しめるようになる。

# 洗い出した要件：
https://docs.google.com/spreadsheets/d/1nE_JCS74I-5_RIYcdwt6QN1UOLgPt2clc80dIO7b9-U/edit#gid=282075926

# 実装した機能について：
※まだ実施前

# 実装予定の機能：
※まだ実施前

# データベース設計：
https://app.diagrams.net/#G13HOlrLccmZcgoCz-AlW7e39oFPOOI_Z4

# ローカルでの動作方法：
※まだ実施前

# DB設計：
## tripsテーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| name   | string     | null: false |
| day    | integer    | null: false |

### Association
- has_many :items
- has_many :memos
- has_many :missions

## itemsテーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| name   | string     | null: false |


### Association
- belongs_to :trips

## missionsテーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| name   | string     | null: false |

### Association
- belongs_to :trips

## memosテーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| text   | text       | null: false |


### Association
- belongs_to :trips