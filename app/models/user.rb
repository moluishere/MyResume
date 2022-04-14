class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6}
  # 必填；驗證；長度最小為 6

  before_save :encrypt_password

  def self.login(user_data) #類別方法
    account = user_data[:account]
    password = user_data[:password]

    if account && password
      user = find_by("email = ? OR username = ?", account, account)
      # 問號帶入變數
      if user && user.password == Enigma::Encoder.encode_password(password)
        user
      else
        nil
      end
    else
      nil
    end
  end

  private
    def encrypt_password
      self.password = Enigma::Encoder.encode_password(self.password)
    end
end