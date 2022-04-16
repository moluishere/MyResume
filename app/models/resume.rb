class Resume < ApplicationRecord

  # validation
  validates :title, presence: true
  validates :content, presence: true
  # 資料驗證，資料相關在 Model 做處理

  # scope
  scope :published, -> { where(status: "published") }
  scope :draft, -> { where(status: "draft") }
  # def self.published
  #   where(status: "published")
  # end 

  # relationships 
  belongs_to :user

   
  def self.all_status
    [
      ["草稿","draft"],
      ["發佈","public"],
    ]
  end
end
