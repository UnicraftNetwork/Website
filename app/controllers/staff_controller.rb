class StaffController < ApplicationController
  def index
    @groups = Group.all
  end
end
