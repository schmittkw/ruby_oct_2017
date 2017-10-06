#Class
class Vehicle
    attr_accessor :engine

    def initialize engine, weight, capacity
        @engine = engine
        @weight = weight
        @capacity = capacity
        @mileage = mileage
    end
    def turnOn
       "Wruum" 
    end    
    def to_s
        "Engine : #{@engine},Weight: #{@weight}, Capacity: #{@capacity}"
    end        
end

#Object of Vehicle
        #it is a memory address

