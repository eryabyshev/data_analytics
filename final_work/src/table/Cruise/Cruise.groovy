package table.Cruise

import table.city.City

class Cruise {

    def number
    City arrival
    City departure
    def flights = []

    Cruise(number, City arrival, City departure) {
        this.number = number
        this.arrival = arrival
        this.departure = departure
    }

    def setFlights(List flights){
        this.flights = flights
    }

}
