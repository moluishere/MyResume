class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # abstract_class 抽象類別
  # 不可以 new 出新物件
end
