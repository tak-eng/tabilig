# README

# アプリケーション名：
旅ログ

# アプリケーション概要：
持ち物リスト、ToDoリスト、メモ帳が１つのアプリに搭載

# URL：　HerokuのURL
https://tabilog-29082.herokuapp.com/

# テスト用アカウント：
ユーザー管理機能は未実施のため、必要なし

# 利用方法：
１、旅行前に持ち物リストを作り、漏れが無いか確認
２、旅行前に旅先でやりたいことをリスト化
３、旅行中に気になった事をメモする

# 目指した課題解決：
ターゲットは19〜２５歳の男女。一人旅に興味はあるが、旅行したい理由が漠然としているため、不安が勝って１歩を踏み出せない人が多い。従って、一般的に存在する持ち物リスト化アプリに追加して、旅行先で実施するTodoリストを具体的に書く機能をつけることで、旅先での目的を明確にさせる事で能動的に楽しめるようになる。また、メモ機能をつける事で備忘録がわりとなり、文章として思い出にも残せる。

# 洗い出した要件：
https://docs.google.com/spreadsheets/d/1nE_JCS74I-5_RIYcdwt6QN1UOLgPt2clc80dIO7b9-U/edit#gid=282075926

# 実装した機能について：
・持ち物リスト登録機能
・Todoリスト登録機能
・コメント登録機能

# 今後実装したいの機能：
・スマホアプリ化して音声で登録できるようにしたい
・Trelloの様なタスク管理ツールに実装されているようにドラッグペーストでして持ち物やTodoリストの進捗状況を変えられるようにしたい

# データベース設計：
https://app.diagrams.net/#G13HOlrLccmZcgoCz-AlW7e39oFPOOI_Z4


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
