# frozen_string_literal: true
class Entry < ApplicationRecord
  before_create :set_log_time

  def set_log_time
    self.log_time = Time.now
  end
end
