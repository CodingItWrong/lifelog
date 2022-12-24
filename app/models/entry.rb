# frozen_string_literal: true
class Entry < ApplicationRecord
  after_initialize :set_log_time

  def set_log_time
    self.log_time ||= Time.now
  end

  def lat_lng
    "(#{latitude}, #{longitude})"
  end

  # https://angularfixing.com/mobile-safari-10-3-1-datetime-local-enter-a-valid-value-error/
  def log_time_noseconds
    log_time.beginning_of_minute
  end
end
