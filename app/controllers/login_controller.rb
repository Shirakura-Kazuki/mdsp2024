class LoginController < ApplicationController
    def inpage
        # 表示のみ
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.password == params[:password]
          if user.role == 'ユーザー'
            redirect_to '/myhome'
          else
            redirect_to '/2step'
          end
        else
          flash[:alert] = '入力エラーがあります'
          render :inpage
        end
    end
end
