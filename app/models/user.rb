class User < ActiveRecord::Base
  has_many :todos, dependent: :destroy

  validates :name, presence: true

  validates :email, presence: true, length: { maximum: 80 }

  has_secure_password

end