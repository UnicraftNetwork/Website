# frozen_string_literal: true

# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
# GitHub: http://github.com/javan/whenever

# Logging
set :output, "#{path}/log/cron.log"

every 1.minute do
  rake "#{path}/lib/tasks/delete_unconfirmed_users"
end
