<<<<<<< HEAD
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
=======
module Api
  module V1
    class FingerprintController < ApplicationController
      skip_before_action :verify_authenticity_token

      def authenticate #method（POST）：JSON形式で指紋認証ID送信
        render json: { fingerprint_id: '112233' }
        # fingerprint_id = params[112233]

        # if fingerprint_id == '112233'
        #   render json: { status: 'success', fingerprint_id: fingerprint_id }
        # else
        #   render json: { status: 'error', message: 'Invalid fingerprint ID' }, status: :bad_request
        # end
      end

      def status
        # JSONリクエストからパラメータを読み込む
        body = JSON.parse(request.body.read)
        status_id = body['status_id']

        if status_id.present?
          Rails.logger.info "Received Status ID: #{status_id}"
          render json: { status: 'success', message: 'Status ID received' }
        else
          render json: { status: 'error', message: 'Status ID missing' }, status: :bad_request
        end
      end
      # curl -X POST -H "Content-Type: application/json" -d "{\"status_id\": \"ok\"}" http://localhost:3000/api/v1/fingerprint/status
      
            # def authenticate
      #   # JSONリクエストからパラメータを読み込む
      #   body = JSON.parse(request.body.read)
      #   fingerprint_id = body['fingerprint_id']

      #   if fingerprint_id.present?
      #     Rails.logger.info "Received fingerprint ID: #{fingerprint_id}"
      #     render json: { status: 'success', message: 'Fingerprint ID received' , fingerprint_id: "12345" }
      #   else
      #     render json: { status: 'error', message: 'Fingerprint ID missing' }, status: :bad_request
      #   end
      # end
    end
  end
end







>>>>>>> e78d9e2f9d891ec3c9f919f8e4293e977174a6d1
