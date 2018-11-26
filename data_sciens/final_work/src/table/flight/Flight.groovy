package table.flight

import table.Cruise.Cruise

class Flight {

    def id
    Cruise cruise
    def delay
    String arrival
    String departure

    Flight(id, Cruise cruise, delay, String arrival, String departure) {
        this.id = id
        this.cruise = cruise
        this.delay = delay
        this.arrival = arrival
        this.departure = departure
    }
}
