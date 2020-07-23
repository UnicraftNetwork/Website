class ApplicationController < ActionController::Base
  def index; end

  def contact; end

  helper_method :user_groups
  helper_method :username_color
  helper_method :username_color_of_uuid

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
end
