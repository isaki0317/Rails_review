class User < ApplicationRecord
  # passwordとpassword_confimartionで照合し、password_digestにはハッシュ化(暗号化)したパスワードが保存される
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :tasks
end
