class Resume < ApplicationRecord

  validates :title, presence: true
  validates :content, presence: true
  # 資料驗證，資料相關在 Model 做處理

  def self.all_status
    [
      ["草稿","draft"],
      ["發佈","public"],
    ]
  end
end
