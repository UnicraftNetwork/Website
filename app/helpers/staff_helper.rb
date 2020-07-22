module StaffHelper
  def resolve_nick_for(staff)
    Minecraft::Data.uuid_to_username(staff.uuid)
  rescue Minecraft::Data::Error
    staff.nick
  end
end
