# frozen_string_literal: true
class Town < ApplicationRecord
  self.table_name = 'towny_towns'
  self.primary_key = 'name'
end
