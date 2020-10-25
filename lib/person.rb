require 'pry'

class Person
attr_accessor :bank_account, :happiness, :hygiene ,:friend ,:topic_of_conversation
attr_reader :name 
    
def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness
        if @happiness > 10
            10
        elsif
            @happiness < 0
            0
        else
            @happiness
        end
    end
    def hygiene
        if @hygiene > 10
            10
        elsif
            @hygiene < 0
            0
        else
            @hygiene
        end
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    
    
    def call_friend(friend)  
         
       [self,friend].each  { |x|  x.happiness += 3 }
        
        "Hi #{friend.name}! It's #{self.name}. How are you?"
        
    end

    def  start_conversation(person, topic)
        
       #binding.pry
       if topic == "politics"
            [person,self].each do |x|  
            #value == "politics"
              x.happiness -= 2 
            end
            "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                 [person,self].each do |x|
                   x.happiness += 1 

                   
                   
            end
            "blah blah sun blah rain"  
        else
            "blah blah blah blah blah"
        end 
           
         
    end

end
