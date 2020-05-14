# frozen_string_literal: true
class Town < ApplicationRecord
  self.table_name = 'TOWNY_TOWNS'
  self.primary_key = 'name'
end
