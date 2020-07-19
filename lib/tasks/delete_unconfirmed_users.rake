# frozen_string_literal: true

desc 'Delete all unconfirmed users after 7 days'
task delete_unconfirmed_users: :environment do
  users = User.where('confirmed_at IS NULL').where('confirmation_sent_at < ?', Time.now - Devise.confirm_within)
  users.each(&:destroy)
end
