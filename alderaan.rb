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

  def continue_questions
    puts "Type yes if you want to know more or no if you want to choose another title."
    input = gets.chomp
    return input
  end

  def menu
    choice = ()
    while choice != ""
      choice = ask_questions
      if choice == "1"
        puts @film.get_opening_crawl(4)
        input = continue_questions
        if input == "yes"
          puts @character.get_characters(4)
        else
          menu
        end
      elsif choice == "2"
        puts @film.get_opening_crawl(5)
        input = continue_questions
        if input == "yes"
          puts @character.get_characters(5)
        else
          menu
        end
      elsif choice == "3"
        puts @film.get_opening_crawl(6)
        input = continue_questions
        if input == "yes"
          puts @character.get_characters(6)
        else
          menu
        end
      elsif choice == "4"
        puts @film.get_opening_crawl(1)
        input = continue_questions
        if input == "yes"
          puts @character.get_characters(1)
        else
          menu
        end
      elsif choice == "5"
        puts @film.get_opening_crawl(2)
        input = continue_questions
        if input == "yes"
          puts @character.get_characters(2)
        else
          menu
        end
      elsif choice == "6"
        puts @film.get_opening_crawl(3)
        input = continue_questions
        if input == "yes"
          puts @character.get_characters(3)
        else
          menu
        end
      elsif choice == "7"
        puts @film.get_opening_crawl(7)
        input = continue_questions
        if input == "yes"
          puts @character.get_characters(7)
        else
          menu
        end
      end
    end
  end
end

Main.new.menu
