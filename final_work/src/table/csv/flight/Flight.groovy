package table.csv.flight

import table.csv.Cruise.Cruise

class Flight {

    def id
    Cruise cruise
    def delay

    Flight(id, Cruise cruise, delay) {
        this.id = id
        this.cruise = cruise
        this.delay = delay
    }
}
