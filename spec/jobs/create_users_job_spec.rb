# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreateUsersJob, type: :job do
  it 'creates 100 users' do
    User.delete_all
    expect(User.all.count).to be_zero
    CreateUsersJob.perform_now
    expect(User.all.count).to eq 100
  end
end
