# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Entry, type: :model do
  include ActiveSupport::Testing::TimeHelpers
  
  describe 'creating' do
    it 'sets the log_time to the current time' do
      freeze_time do
        entry = Entry.create!
        expect(entry.log_time).to eq(Time.now)
      end
    end
  end
end
