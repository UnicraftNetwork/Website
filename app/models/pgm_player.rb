class PgmPlayer < ApplicationRecord
  self.table_name = 'pgm'
  self.primary_key = 'uuid'
end
