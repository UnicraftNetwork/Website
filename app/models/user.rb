class User < ApplicationRecord
  # Include default registrations modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_secure_token :minecraft_token

  validates :name, uniqueness: true, length: { minimum: 3, maximum: 16 }

  def to_param
    name
  end
end
