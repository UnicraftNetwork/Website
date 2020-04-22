class GroupStaff < ApplicationRecord
  belongs_to :group
  belongs_to :staff
end
