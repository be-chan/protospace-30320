#テーブル設計

## users テーブル

| Column   | Type   | Option   |
| -------- | ------ | ---------|
| email    | string | NOT NULL |
| password | string | NOT NULL |
| name     | string | NOT NULL |
| profile  | text   | NOT NULL |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type       | Option              |
| ---------- | ---------- | ------------------- |
| title      | string     | NULL                |
| catch_copy | text       | NOT NULL            |
| concept    | text       | NOT NULL            |
| image      |            | ActiveStorageで実装 |
| user       | references |                     |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column     | Type       | Option   |
| ---------- | ---------- | -------- |
| text       | text       | NOT NULL |
| user       | references |          |
| prototype  | references |          |

### Association

- belongs_to :user
- belongs_to :prototype

