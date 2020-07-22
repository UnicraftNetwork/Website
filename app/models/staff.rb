class Staff < ApplicationRecord
  has_and_belongs_to_many :groups, join_table: 'group_staffs'

  validates :uuid, uniqueness: true, presence: true
end
