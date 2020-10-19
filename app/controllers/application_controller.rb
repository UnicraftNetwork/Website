class ApplicationController < ActionController::Base
  def index; end

  def contact; end

  protect_from_forgery prepend: true

  helper_method :uuid_to_nickname
  helper_method :uuid_to_profile_link
  helper_method :user_groups
  helper_method :username_color
  helper_method :username_color_of_uuid
  helper_method :resolve_minecraft_nick

  def uuid_to_nickname(uuid)
    user = User.find_by(uuid: uuid)
    user.nil? ? nil : user.name
  end

  def user_groups(user)
    staff_profile = user.uuid.nil? ? nil : Staff.find_by_uuid(user.uuid)
    staff_profile.nil? ? [] : staff_profile.groups.sort_by(&:priority)
  end

  def username_color(user)
    groups = user_groups(user)
    if groups.empty?
      ''
    else
      groups.first.colour_hex
    end
  end

  def username_color_of_uuid(uuid)
    username_color(User.find_by(uuid: uuid))
  end

  def resolve_minecraft_nick(user)
    minecraft_registry = MinecraftRegistry.find_by(uuid: user.uuid)
    minecraft_registry.nil? ? nil : minecraft_registry.nick
  end

  def uuid_to_profile_link(uuid)
    user = User.find_by(uuid: uuid)
    user.nil? ? nil : "#{root_url}u/#{user.name}"
  end
end
