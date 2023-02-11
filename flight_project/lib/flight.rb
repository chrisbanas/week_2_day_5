require_relative "passenger"

class Flight

    attr_reader :passengers

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def full?
        @passengers.length >= @capacity
    end

    def board_passenger(passenger) #they just created an instance so we did not actually have to call the method
         if self.full?
            return
         elsif passenger.has_flight?(@flight_number) == false
            return
         else
            @passengers << passenger
         end
    end

    def list_passengers
        @passengers.map { |passanger| passanger.name } # this tripped me up because I though passengers was an array already and it is but it contains all the information and we just needed to pull out the name.
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end


end
