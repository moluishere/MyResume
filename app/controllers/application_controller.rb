class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    # 繼承的cantroller若有共同功能可以寫在這裡
    # 捕捉例外：rescue_from 可以在 controller 中宣告去救回特定的異常物件
    helper_method :user_signed_in?, :current_user

    private
      def user_signed_in?
        session[:thankyou9527].present?
      end
  
      def current_user
        User.find_by(id: session[:thankyou9527])
      end
  
      def not_found
        render file: "#{Rails.root}/public/not_found.html",
               status: 404,
               layout: false
      end

      def authenticate_user
        if not user_signed_in?
          redirect_to sign_in_users_path
        end
      end
end

