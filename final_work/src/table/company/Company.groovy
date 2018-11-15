package table.company

import table.Cruise.Cruise


class Company {
    def code;
    def name;
    def flights = [] as List<Cruise>

    Company(name, code, flights) {
        this.code = code
        this.name = name
        this.flights = flights
    }
}


