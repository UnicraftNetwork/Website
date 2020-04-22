class Group < ApplicationRecord
  has_and_belongs_to_many :staffs, join_table: 'group_staffs'
end
