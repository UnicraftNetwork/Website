class MinecraftServer < ApplicationRecord
  has_secure_token :id
end
