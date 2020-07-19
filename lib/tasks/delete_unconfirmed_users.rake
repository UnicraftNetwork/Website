# frozen_string_literal: true

namespace :ucn do
  desc 'Destroys unconfirmed users whose emailed auth tokens have been invalidated by devise.'
  task users: :environment do
    while true
      users = User.where('confirmed_at IS NULL').where('confirmation_sent_at < ?', Time.now - Devise.confirm_within)
      puts("I, Destroying a total of #{users.size} unconfirmed users (Devise confirmation threshold: #{Devise.confirm_within}).")
      users.each(&:destroy)
      sleep(1.minute)
    end
  end
end
