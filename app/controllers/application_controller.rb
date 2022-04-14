class ApplicationController < ActionController::Base
    # 繼承的cantroller若有共同功能可以寫在這裡
    # 
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    # 捕捉例外：rescue_from 可以在 controller 中宣告去救回特定的異常物件

    private 

    def not_found
      render file: "#{Rails.root}/public/not_found.html",
      status: 404,
      layout: false
    end
end
