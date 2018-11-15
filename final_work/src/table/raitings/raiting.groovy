package table.raitings

import table.csv.flight.Flight
import table.persone.Persone

class Raiting {

    Persone persone
    Flight flight
    def points

    Raiting(Persone persone, Flight flight, points) {
        this.persone = persone
        this.flight = flight
        this.points = points
    }
}
