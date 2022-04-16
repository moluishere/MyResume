class AddUserIdToResume < ActiveRecord::Migration[6.1]
  def change
    # add_column :resumes, user_id, :integer # 加一個欄位
    add_reference :resumes, :user, index: true # 加一個參照索引
  end
end
