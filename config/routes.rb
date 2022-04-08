Rails.application.routes.draw do 
  
  get "/resumes", to: "resumes#index" #履歷列表
  get "/resumes/new", to: "resumes#new", as: "new_resume"  #新增履歷
  # 路徑對照表：Helper 方法，若沒有設定 as ，會自動生出 resume_new_path
  # 使用 as 可以對路徑具有掌控權，若更動URL，as 也不會有影響

  # get 是一個方法，ruby中可省略方法的括號；裡面有兩個參數，後面的hash括號被省略
  # 完整寫法：get("/resumes/new", {to: "resumes#new", as: "new_resume"}) 

  root "pages#home"
  # get "/", to: "pages#home"
  # get "/about", to: "parges#about"
end
