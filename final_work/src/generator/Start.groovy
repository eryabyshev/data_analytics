package generator




def persones = DateGenerator.personeListGenerator()

def cities = DateGenerator.citiesListGenerator()

def cruise = DateGenerator.cruiseListGenerator(cities)

def companies = DateGenerator.companyListGenerator()

def raiting = DateGenerator.raitingListGenerator(companies, persones)

def a = 0


//def connector = new DataBaseConnector().getInstance()
//
//connector.connection.autoCommit = false
//
//connector.eachRow('select inet_server_addr( ), inet_server_port( );'){ row ->
//    println row[0]
//}



