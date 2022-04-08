class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.string :title
      t.text :content
      t.string :status
  
      t.timestamps
      # created_at
      # updated_at

      # rails 還會自動生成流水號，所以這裡共有6個欄位
    end
  end
end
