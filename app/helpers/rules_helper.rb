module RulesHelper

  module Rules
    AUTHOR = Minecraft::Data.uuid_to_username('2cef6d05-ec9a-44b3-bedc-53359c68ae65')
    LAST_MODIFIED = '16/04/2020'.freeze
    EDITORS = [Minecraft::Data.uuid_to_username('1e578ee9-dc2a-41b8-ad48-edbf90db1839'),
               Minecraft::Data.uuid_to_username('14b0d4f4-293a-4344-985f-b36ddc28ba9e'),
               Minecraft::Data.uuid_to_username('c5fafde2-d6fd-4d26-b48c-b20497dd83c8'),
               Minecraft::Data.uuid_to_username('1c898c77-b0cc-474a-8ce4-b5521f2b18e7')
    ].freeze
  end

  module Terms
    LAST_MODIFIED = '16/04/2020'.freeze
  end
end
