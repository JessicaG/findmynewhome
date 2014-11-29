require 'rails_helper'

describe 'As a User', type: :feature do
  include Capybara::DSL
  context 'when visiting page' do
    before(:each) do
      visit root_path
    end

    it 'has a login link' do
      expect(page).to have_link('Sign in with Twitter')
    end

  end
end
