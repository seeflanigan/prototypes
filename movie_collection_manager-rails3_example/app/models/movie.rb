class Movie < ActiveRecord::Base
  def self.total_runtime_in_minutes
    Movie.sum(:run_time_in_minutes)
  end
end
