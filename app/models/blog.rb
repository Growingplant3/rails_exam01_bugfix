class Blog < ApplicationRecord
  # エラーの原因: blogs_pathでrouting errorを起こす
  # 修正の意図: resources :blogの記述になっていたのでコードの書き方が違ったものを直す必要があった
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
