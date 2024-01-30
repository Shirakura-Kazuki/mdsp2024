class Api::V1::FingerprintController < ApplicationController
    skip_before_action :verify_authenticity_token

      def authenticate #JSON形式で指紋認証ID送信
        render json: { fingerprint_id: '2' }
      end

      #Pusher機能追加ver
      def receive_ok
        stat = params[:state] # クライアントから送信されたパラメータを受け取る
    
        # Pusherを使用してクライアントにメッセージを送信
        if stat == "OK"
          Pusher.trigger('iot-test-0123', 'state_event', {
            state: stat
          })
          render json: { message: "Received state: #{stat}" }
        else
          Pusher.trigger('iot-test-0123', 'state_event', {
            state: "NG"
          })
          render json: { message: "NGReceived state: #{stat}" }, status: :unauthorized
        end
      end
end
