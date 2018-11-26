package table.company

import table.Cruise.Cruise


class Company {
    def code
    def name
    def cruise = [] as List<Cruise>

    Company(name, code, cruise) {
        this.code = code
        this.name = name
        this.cruise = cruise
    }
}


