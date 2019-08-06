# frozen_string_literal: true

class CreateUsersJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    1.upto(100).each do |index|
      User.create(username: "user-#{index}")

      # Sleep 20 second after creating 20 users
      next unless Rails.env.eql?('production')

      sleep(20) if (index % 20).eql?(0)
    end
  end
end
