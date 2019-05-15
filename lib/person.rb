# your code goes here
require "pry"

class Person

  attr_reader(:name)

  attr_accessor(:bank, :happiness, :hygiene)

  def initialize(name)
    @name = name
    @bank = 25
    @happiness = 8
    @hygiene = 8
  end

  def get_paid
    @bank = @bank + 25
    puts "all about the benjamins"
  end

  def take_bath
    @hygiene = @hygiene + 4
    self.hygiene = @hygiene
    puts "Rub-a-dub just relaxing in the tub"
  end

  def work_out
    @hygiene = @hygiene - 3
    self.hygiene = @hygiene
    @happiness = @happiness + 2
    self.happiness = @happiness
    puts "another one bites the dust"
  end

   def hygiene=(hygiene)
     if hygiene <= 0
       puts "Hygiene can't be less than 0"
       @hygiene = 0
     elsif hygiene >= 10
       puts "hygiene can't be more than 10"
       @hygiene = 10
     else @hygiene = hygiene
     end
   end

   def happiness=(happiness)
     if happiness <= 0
       puts "happiness can't be less than 0"
       @happiness = 0
     elsif happiness >=10
       puts "happiness can't be more than 10"
       @happiness = 10
     else @happiness = happiness
     end
   end

   def call_friend(name)
     @happiness = @happiness + 3
     self.happiness = @happiness
     name.happiness = name.happiness + 3
     puts "Hi, #{name.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(name, topic)
     if topic == "politics"
       @happiness = @happiness - 5
       puts "blah blah partisan blah lobbyist"
     elsif topic == "weather"
       @happiness = @happiness + 3
       puts "blah blah sun blah rain"
     else
       puts "blah blah blah blah blah"
     end
   end
end

mike = Person.new("Mike")
bob = Person.new("Bob")
binding.pry
