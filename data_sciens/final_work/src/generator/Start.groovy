package generator


DateGenerator dateGenerator = new DateGenerator()

def persones = dateGenerator.personeListGenerator()
def cities = dateGenerator.citiesListGenerator()
def companies = dateGenerator.companyListGenerator()
def raiting = dateGenerator.raitingListGenerator(companies, persones)

DataBaseConnector.insetIntoCompany(companies)

companies.forEach{e-> def cruise = e.cruise
    DataBaseConnector.insertIntoCruise(cruise)
    cruise.forEach({c-> DataBaseConnector.insertIntoFlights(c.flights)})
}

DataBaseConnector.insertIntoPerson(persones)
DataBaseConnector.insertIntoCitys(cities)
DataBaseConnector.insertIntoRating(raiting)

println("Finish")



