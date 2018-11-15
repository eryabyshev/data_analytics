package generator




def persones = DateGenerator.personeListGenerator()

def cities = DateGenerator.citiesListGenerator()

def cruise = DateGenerator.cruiseListGenerator(cities)

def companies = DateGenerator.companyListGenerator(cruise)

def raiting = DateGenerator.raitingListGenerator(companies, persones)

def a = 0
