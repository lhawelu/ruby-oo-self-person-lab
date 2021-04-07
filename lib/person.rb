# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    @happiness = number.clamp(0, 10)
  end

  def hygiene=(number)
    @hygiene = number.clamp(0, 10)
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid amount
    @bank_account = @bank_account + amount
    "all about the benjamins"
  end

  def take_bath 
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out 
    self.happiness = @happiness + 2 
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness = friend.happiness+ 3
    self.happiness = @happiness + 3 
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness = @happiness - 2
      person.happiness = person.happiness - 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end


