require 'httparty'
class Team < ActiveRecord::Base
  include HTTParty
  base_uri 'https://na.api.pvp.net/api/lol/na'

  attr_reader :bans, :champions
  def initialize()
    @bans = Array.new()
    @champions = Array.new()
  end

  def ban(champion)
    if @bans.length < 3
      @bans << champion
    else
      p "You can only ban 3 champions"
    end
  end

  def pick(champion)
    if @champions < 5
      @champions << champion
    else
      p "A team has 5 champions."
    end
  end
end

team1 = Team.new
team2 = Team.new


team1.ban("Thresh")
team2.ban("Kassadin")
team1.ban("Kogmaw")
team2.ban("Annie")
team1.ban("Braum")
team2.ban("Maoki")
team2.ban("Maoki")
p team1.bans

# for i =0; i<champions.length; i++
#   hit base_uri + version/ + i (championid) + ?
# end

# automatically starts with baseURI.. append whatever you want after this. String interpolation
# response = HTTParty.get("/")
# # response will be json.. parse json into hash.

# puts response.body, response.code, response.message, response.headers.inspect

# # Or wrap things up in your own class
# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   def initialize(service, page)
#     @options = { query: {site: service, page: page} }
#   end

#   def questions
#     self.class.get("/2.2/questions", @options)
#   end

#   def users
#     self.class.get("/2.2/users", @options)
#   end
# end