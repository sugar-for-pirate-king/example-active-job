# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with username' do
    user = User.new(username: 'sample')
    user.valid?
    expect(user.errors).to be_blank
  end
end
