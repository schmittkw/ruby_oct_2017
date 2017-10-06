class Mammal
    
    def initialize()
       @health = 170
    end    
    def display_health()
       @health
    end
    def pet ()
        @health += 5
        self
    end    
    def walk()
        @health -= 1
        self
    end
    def run()
        @health -= 10
        self
    end        

end   

