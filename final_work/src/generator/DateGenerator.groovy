package generator


import table.Cruise.Cruise
import table.city.City
import table.company.Company
import table.flight.Flight
import table.persone.Persone
import table.raitings.Raiting

class DateGenerator {

    def final static LENGHT_OF_CRUISE_NUMBER = 4
    def final static NUNBER_OR_CRUISE = 200
    def static FLIGHT_ID = 1
    def static RAND = new Random()
    def static MAX_DELAY = 24 * 60 * 60 * 1000

    static List<City> citiesListGenerator() {
        def airportsCodesFile = new File("/home/parallels/Desktop/data_sciens/final_work/resources/airports.txt").text.split("\n")
        def airportsNamesFile = new File("/home/parallels/Desktop/data_sciens/final_work/resources/airports_names.txt").text.split("\n")

        def citys = [] as List<City>

        for (def i = 0; i < Integer.min(airportsCodesFile.size(), airportsNamesFile.size()); i++) {
            citys << new City(airportsNamesFile[i], airportsCodesFile[i])
        }
        citys
    }


    static List<Persone> personeListGenerator() {
        def personName = new File("/home/parallels/Desktop/data_sciens/final_work/resources/person_names.txt").text.split("\n")

        def persons = [] as List<Persone>
        def id = 1;
        for (int i = 0; i < personName.size() - 1; i++) {
            def first = personName[i].split(" ")[0]
            def last = personName[i].split(" ")[1]
            persons << new Persone(id++, first, last)
        }
        persons
    }


    static def formToCruiseNumber(int i, int lenghtOfNumber) {
        def a = Integer.toString(i)

        def result = "" as String

        for (def j = 0; j < lenghtOfNumber - a.size(); j++)
            result += "0"

        return result + i;


    }


    static String randomMumber() {
        return formToCruiseNumber(RAND.nextInt(9999) + 1, LENGHT_OF_CRUISE_NUMBER)
    }


    static List<Cruise> cruiseListGenerator(List<City> cities) {

        def result = []

        for (int i = 0; i < NUNBER_OR_CRUISE; i++) {
            def arrival = cities.get(RAND.nextInt(RAND.nextInt(cities.size()) + 1))
            def departure = cities.get(RAND.nextInt(RAND.nextInt(cities.size()) + 1))
            def number = randomMumber()
            def cruise = new Cruise(number, arrival, departure)
            cruise.flights = flightListGenerator(RAND.nextInt(100) + 50, cruise)
            result << cruise
        }
        result
    }


    static Date dateGeneraror(){

        def before = new GregorianCalendar()
        def after = new GregorianCalendar()

        before.set(before.YEAR, new Date().getYear())
        before.set(new Date().getYear(), RAND.nextInt(12) + 1, RAND.nextInt(28) + 1,
                RAND.nextInt(23) + 1, RAND.nextInt(59) + 1, RAND.nextInt(59) + 1)
        before

        Calendar calendar = Calendar.getInstance()
        calendar.set(new Date().getYear(), RAND.nextInt(12) + 1, RAND.nextInt(28) + 1,
                RAND.nextInt(23) + 1, RAND.nextInt(59) + 1, RAND.nextInt(59) + 1)
        calendar.getTime()


    }


    static List<Flight> flightListGenerator(int count, Cruise cruise){

        def result = [] as List<Flight>
        for(def i = 0; i < count; i++){
            def date = dateGeneraror()
            if(RAND.nextInt(5) % 3 == 0)
                result << new Flight(FLIGHT_ID++, cruise, RAND.nextInt(MAX_DELAY), date, date.setTime(date.getTime() + RAND.nextInt(MAX_DELAY)))
            else
                result << new Flight(FLIGHT_ID++, cruise,0, date, date.setTime(date.getTime() + RAND.nextInt(MAX_DELAY)))

        }
        result
    }



    static List<Company> companyListGenerator(List<Cruise> cruises){

        def company = new File("/home/parallels/Desktop/data_sciens/final_work/resources/company_names.txt").text.split(",")
        def result = [] as List<Company>

        for(int i = 0; i < company.size() / 2; )
            result << new Company(company[i++], company[i++], cruises)
        result
    }


    static List<Raiting> raitingListGenerator(List<Company> companies, List<Persone> persones){

        def result = [] as List<Raiting>
        int pointer = 0;

        for(Company company : companies){
            for (Cruise cruise1 : company.flights)
                for(Flight flight : cruise1.flights){
                    if(pointer >= persones.size())
                        pointer = 0
                    result << new Raiting(persones.get(pointer++), flight, RAND.nextInt(10) + 1)
                }
        }

        result
    }
}






