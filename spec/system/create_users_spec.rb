# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create Users', type: :system do
  before do
    driven_by :rack_test
  end

  it 'returns success message' do
    visit users_path
    click_on 'Create users'
    expect(page).to have_content 'Job has been started!'
  end
end
