require 'httparty'
require 'json'
require 'ap'
require_relative 'film'
require_relative 'character'

class Main
  def initialize
    @film = Film.new
    @character = Character.new
  end

  def initial_questions
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

  def know_more_question
    puts "\n Would you like to know more? Type yes if you do or no if you want to choose another title."
    input = gets.chomp
    return input
  end

  def read_bio_question
    puts "\n Would you like to see a character's bio?  If so type the number of the character, or 0 to go back."
    input2 = gets.chomp
    return input2
  end

  def last_question
    puts "\n Would you like to: "
    puts "1. Go back to the Movie"
    puts "2. Choose another Title"
    input3 = gets.chomp
    return input3
  end

  def menu
    choice = ()
    while choice != ""
      choice = initial_questions
      if choice == "1"
        puts @film.get_opening_crawl(4)
        input = know_more_question
        if input == "yes"
          puts "#{index + 1}. " + @character.get_characters(4)
        else
          menu
        end
      elsif choice == "2"
        puts @film.get_opening_crawl(5)
        input = know_more_question
        if input == "yes"
          puts @character.get_characters(5)
        else
          menu
        end
      elsif choice == "3"
        puts @film.get_opening_crawl(6)
        input = know_more_question
        if input == "yes"
          puts @character.get_characters(6)
        else
          menu
        end
      elsif choice == "4"
        puts @film.get_opening_crawl(1)
        input = know_more_question
        if input == "yes"
          puts @character.get_characters(1)
        else
          menu
        end
      elsif choice == "5"
        puts @film.get_opening_crawl(2)
        input = know_more_question
        if input == "yes"
          puts @character.get_characters(2)
        else
          menu
        end
      elsif choice == "6"
        puts @film.get_opening_crawl(3)
        input = know_more_question
        if input == "yes"
          puts @character.get_characters(3)
        else
          menu
        end
      elsif choice == "7"
        puts @film.get_opening_crawl(7)
        input = know_more_question
        if input == "yes"
          puts @character.get_characters(7)
        else
          menu
        end
      end
    end
  end

  # case film_choice
  # when "1"
  #   puts @film.get_opening_crawl(4)
  # when "2"
  #   puts @film.get_opening_crawl(5)
  # when "3"
  #   puts @film.get_opening_crawl(6)
  # when "4"
  #   puts @film.get_opening_crawl(1)
  # when "5"
  #   puts @film.get_opening_crawl(2)
  # when "6"
  #   puts @film.get_opening_crawl(3)
  # when "7"
  #   puts @film.get_opening_crawl(7)
  # end

end

Main.new.menu
