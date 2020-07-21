class UsersController < ApplicationController
  def show
    @user = User.find_by!(name: params[:name])            # User by profile name.
    @pgm_record = PgmRecord.find_by_uuid(@user.uuid)      # @user's pgm record, or nil if it doesn't have a Minecraft account linked.

    staff_profile = Staff.find_by_uuid(@user.uuid)
    @groups = staff_profile.nil? ? [] : staff_profile.groups.sort_by(&:priority)
  end
end
