package table.flight

import table.Cruise.Cruise

class Flight {

    def id
    Cruise cruise
    def delay
    Date arrival
    Date departure

    Flight(id, Cruise cruise, delay, Date arrival, Date departure) {
        this.id = id
        this.cruise = cruise
        this.delay = delay
        this.arrival = arrival
        this.departure = departure
    }
}
