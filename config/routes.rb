Rails.application.routes.draw do
  # エラーの原因: blogs_pathでrouting errorを起こす
  # 修正の意図: resources :blogの記述になっていたのでコードの書き方が違ったものを直す必要があった
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
