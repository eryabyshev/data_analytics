package table.Cruise

import table.city.City
import table.flight.Flight

class Cruise {
    def code
    def number
    City arrival
    City departure
    def flights = [] as List<Flight>

    Cruise(number, City arrival, City departure) {
        this.number = number
        this.arrival = arrival
        this.departure = departure
    }

    def setFlights(List flights){
        this.flights = flights
    }

    def setCode(def code){
        this.code = code
    }

}
