class MinecraftRegistry < ApplicationRecord
  self.table_name = 'minecraft_users'
  self.primary_key = 'uuid'
end
