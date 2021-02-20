require 'pry'
class Person
attr_reader :name , :happiness
attr_accessor  :hygiene , :bank_account , :all_people
@@all_people = []
def initialize(name)
@name = name
@bank_account = 25
@happiness = 8
@hygiene = 8
@@all_people << self
end

def clean?
@hygiene > 7 ? true : false
end

def happy?
@happiness > 7 ? true : false
end

def get_paid(salary)
@bank_account += salary
return "all about the benjamins"
end

def take_bath
self.hygiene += 4
return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness += 2
    self.hygiene -= 3
return "♪ another one bites the dust ♫"
end

def call_friend(friend)
x = @@all_people.index(friend)
@@all_people[x].happiness += 3
self.happiness += 3
return "Hi #{@@all_people[x].name}! It's #{@name}. How are you?"
end

def start_conversation(person, topic)
x = @@all_people.index(person)
if topic == "politics"
  @@all_people[x].happiness -= 2
  self.happiness -= 2
  return "blah blah partisan blah lobbyist"
elsif topic == "weather"
  @@all_people[x].happiness += 1
  self.happiness += 1
  return "blah blah sun blah rain"
else
    return "blah blah blah blah blah"
end
end

def happiness=(amount)
if amount <= 10 && amount >= 0
    @happiness = amount
elsif amount <= 0
    @happiness = 0
else 
    @happiness = 10
end
end

def hygiene=(amount)
    if amount <= 10 && amount >= 0
        @hygiene = amount
    elsif amount <= 0
        @hygiene = 0
    else 
        @hygiene = 10
    end
end

end