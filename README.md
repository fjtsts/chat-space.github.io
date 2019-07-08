# DB設計

## users table
|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|mail|string|null: false|
### Association
- has_many :groups, through: members
- has_many :messages
- has_many :members
## members table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, references: true|
|group_id|integer|null: false, references: true|
### Association
- belongs_to :group
- belongs_to :user
## messages table
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|user_id|integer|references: true|
|group_id|integer|references: true|
### Association
- belongs_to :group
- belongs_to :user
## groups table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, references: true|
|group_id|integer|null: false, references: true|
### Association
- has_many :messages
- has_many :members
- has_many :users, through: members
