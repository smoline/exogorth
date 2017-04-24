require 'httparty'
require 'json'
require 'ap'

class Film
  def get_opening_crawl(episode_identifier)
    response = HTTParty.get("http://swapi.co/api/films")
    @questions = JSON.parse(response.body)
    @answer = @questions["results"].find { |result|
      result["episode_id"] = episode_identifier }
    return @answer["opening_crawl"]
  end
end

# @questions["results"].each_with_index { |film, index| puts index + 1, film["title"] }

# class StarWarsMovies
#   def questions(current_page = 1)
#     response = HTTParty.get("http://swapi.co/api/films",
#                             {
#                               results: {
#                                 title: title_name,
#                                 episode_id: ,
#                                 opening_crawl: ,
#                                 characters: ,
#                               }
#                             })
#     questions = JSON.parse(response.body)
#
#     return questions["results"]
#   end
# end
