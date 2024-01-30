Rails.application.routes.draw do
<<<<<<< HEAD
  root 'login#inpage'

  post 'login', to: 'login#create', as: 'login' # ユーザーと医療従事者
  get 'myhome', to: 'home#myhome'  #ユーザーページ
  get 'medicalhome', to: 'medical#medical'  #医療従事者ページ
  get '2step', to: 'login#steps'  #指紋認証ページ
  get 'completed', to: 'login#comp'  #login完了ページ
  get 'msnew', to: 'isdb#ms_new'  #新規登録
  get 'login', to: 'login#inpage'  #ログインページ
  get 'msaut', to: 'isdb#ms_aut'  #リダイレクト
  get 'mslospas', to: 'isdb#ms_lospas'  #パスワードロス
  get 'mslogaut', to: 'isdb#ms_logaut'  #ログアウトページ
  get 'msuser', to: 'isdb#ms_user'  #ユーザー情報ページ
  get 'msbord', to: 'isdb#ms_bord'  #掲示板ページ
  get 'mspost', to: 'isdb#ms_post'  #送信
  get 'msform', to: 'isdb#ms_form'  #フォーム
  get 'mscon', to: 'isdb#ms_con'

  # APIリスト(M5Stackとの通信定義)
  namespace :api do
    namespace :v1 do
      # post 'fingerprint/authenticate', to: 'fingerprint#authenticate'
      get 'fingerprint/authenticate', to: 'fingerprint#authenticate'
      post 'fingerprint/ok', to: 'fingerprint#receive_ok'
    end
  end

=======
  root to: 'account#m5test'

  get 'login_d', to: 'account#login_d'
  get 'login', to: 'account#login'

  namespace :api do
    namespace :v1 do
      get 'fingerprint/authenticate', to: 'fingerprint#authenticate'
      post 'fingerprint/status', to: 'fingerprint#status'
    end
  end
>>>>>>> e78d9e2f9d891ec3c9f919f8e4293e977174a6d1
end
