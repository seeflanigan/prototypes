require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  fixtures :all

  test "we can get a list of movies" do
    assert_nothing_raised { Movie.all }
  end

  test "we can get a total runtime value for all movies" do
    total = movies(:one).run_time_in_minutes + movies(:two).run_time_in_minutes
    assert_equal(total, Movie.total_runtime_in_minutes)
  end
end
