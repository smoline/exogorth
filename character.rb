require 'httparty'
require 'json'
require 'ap'

class Character
  def get_characters(episode_identifier)
    array = []
    response = HTTParty.get("http://swapi.co/api/films")
    @questions = JSON.parse(response.body)
    @answer = @questions["results"].find { |result|
      result["episode_id"] = episode_identifier }
    @answer["characters"].each do |char|
      array << HTTParty.get(char)["name"]
    end
    return array
  end
end
