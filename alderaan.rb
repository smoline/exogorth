require 'httparty'
require 'json'
require 'ap'
require_relative 'film'
# require_relative 'character'

class Main
  # def get_opening_crawl(episode_identifier)
  #   response = HTTParty.get("http://swapi.co/api/films")
  #   @questions = JSON.parse(response.body)
  #   answer = @questions["results"].find { |result|
  #     result["episode_id"] = episode_identifier }
  #   ap answer["opening_crawl"]
  # end
  def initialize
    @film = Film.new
  end

  def ask_questions
    puts "Please type the number of the movie you would like to know more about:"
    puts "1.  A New Hope"
    puts "2.  The Empire Strikes Back"
    puts "3.  Return of the Jedi"
    puts "4.  The Phantom Menace"
    puts "5.  Attack of the Clones"
    puts "6.  Revenge of the Sith"
    puts "7.  The Force Awakens"
    choice = gets.chomp
    return choice
  end

  def menu
    choice = ask_questions
    if choice == "1"
      ap @film.get_opening_crawl(4)  
    elsif choice == "2"
      get_opening_crawl(5)
    elsif choice == "3"
      get_opening_crawl(6)
    elsif choice == "4"
      get_opening_crawl(1)
    elsif choice == "5"
      get_opening_crawl(2)
    elsif choice == "6"
      get_opening_crawl(3)
    elsif choice == "7"
      get_opening_crawl(7)
    end
  end
end

Main.new.menu
