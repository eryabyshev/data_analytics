package table.csv.company

import table.csv.Cruise.Cruise


class Company {
    def carrier;
    def carrier_name;
    def flights = [] as List<Cruise>

    Company(carrier, carrier_name, flights) {
        this.carrier = carrier
        this.carrier_name = carrier_name
        this.flights = flights
    }


}


