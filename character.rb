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
    @answer["characters"].each_with_index do |char, index|
      array << "#{index + 1}. " + HTTParty.get(char)["name"]
    end
    return array
  end

  def get_character_bio(character_ident)
    response = HTTParty.get("http://swapi.co/api/people")
    @questions = JSON.parse(response.body)
    return
  end
end
