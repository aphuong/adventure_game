require './hero'
require './node'
require './item'
require './hour'
require './world_builder'

class Game
  include WorldBuilder
  attr_accessor :all_nodes, :current_node, :player

  def initialize
    @all_nodes = []
    @current_node = # find the first node
    @hour = Hour.new
    intro_text
    hero = Hero.new
  end

  # Lets you move to a different node
  def next(num)
    @node = num
    @hour.number +=1
  end

  def intro_text
    puts "Hello! Welcome to: Choose Your Own Adventure, The Hunger Games Edition. What's your name?"
    @player = gets.strip

    # puts "Hello #{@player}. It's Reaping Day and you have been chosen to be a tribute in the Hunger Games!"
    # puts "Are you ready for this challenge? Type YES to begin, NO to quit."
    # input = gets.strip.upcase
  end
end
