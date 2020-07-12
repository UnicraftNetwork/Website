class User < ApplicationRecord
  # Include default registrations modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, uniqueness: true, length: { minimum: 3, maximum: 16 }

  has_one :profile, dependent: :destroy

  def to_param
    name
  end
end
