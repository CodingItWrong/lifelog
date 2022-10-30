# frozen_string_literal: true
class Entry < ApplicationRecord
  after_initialize :set_log_time

  def set_log_time
    self.log_time = Time.now
  end

  def lat_lng
    "(#{latitude}, #{longitude})"
  end
end
