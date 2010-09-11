require 'rubygems'
require 'twitter'

class Twitter < Thor
  desc "read [USER]", "Read tweets from users you follow, or optionally, from [USER]"
  def read(user = "")
    puts "it works!" 
  end
end
