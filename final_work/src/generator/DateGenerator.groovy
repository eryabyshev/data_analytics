package generator


import table.Cruise.Cruise
import table.city.City
import table.company.Company
import table.flight.Flight
import table.persone.Persone
import table.raitings.Raiting

class DateGenerator {

    static final  def LENGHT_OF_CRUISE_NUMBER = 4
    static final  def NUNBER_OR_CRUISE = 200
    static def FLIGHT_ID = 1
    static def MAX_DELAY = 24 * 60 * 60 * 1000

    static def setOfCruiseNumber = [] as Set<Integer>

    static def pathToResources = "/home/parallels/Desktop/Developer/data_sciens/final_work/resources/"

    static List<City> citiesListGenerator() {
        def airportsCodesFile = new File(pathToResources + "airports.txt").text.split("\n")
        def airportsNamesFile = new File(pathToResources +"airports_names.txt").text.split("\n")

        def citys = [] as List<City>

        for (def i = 0; i < Integer.min(airportsCodesFile.size(), airportsNamesFile.size()); i++) {
            citys << new City(airportsNamesFile[i], airportsCodesFile[i])
        }
        citys
    }


    static List<Persone> personeListGenerator() {
        def personName = new File(pathToResources + "person_names.txt").text.split("\n")

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
        Random r = new Random()
        return formToCruiseNumber(r.nextInt(9999) + 1, LENGHT_OF_CRUISE_NUMBER)
    }


    static List<Cruise> cruiseListGenerator(List<City> cities) {

        def result = []
        Random r = new Random()
        for (int i = 0; i < NUNBER_OR_CRUISE; i++) {
            def arrival = cities.get(r.nextInt(r.nextInt(cities.size()) + 1))
            def departure = cities.get(r.nextInt(r.nextInt(cities.size()) + 1))
            def number = randomMumber()
            def cruise = new Cruise(number, arrival, departure)
            cruise.flights = flightListGenerator(r.nextInt(100) + 50, cruise)
            result << cruise
        }
        result
    }


    static Date dateGeneraror(){
        def before = new GregorianCalendar()
        Random r = new Random()
        before.set(before.YEAR, new Date().getYear())
        before.set(new Date().getYear(), r.nextInt(12) + 1, r.nextInt(28) + 1,
                r.nextInt(23) + 1, r.nextInt(59) + 1, r.nextInt(59) + 1)


        Calendar calendar = Calendar.getInstance()
        calendar.set(new Date().getYear(), r.nextInt(12) + 1, r.nextInt(28) + 1,
                r.nextInt(23) + 1, r.nextInt(59) + 1, r.nextInt(59) + 1)
        calendar.getTime()
    }


    static Date dateAfter(Date date){
        Random r = new Random()
        Date after = new Date(date.getTime() + r.nextInt((10 * 60 * 60 * 1000)))
        after
    }



    static List<Flight> flightListGenerator(int count, Cruise cruise){
        Random r = new Random()
        def result = [] as List<Flight>
        for(def i = 0; i < count; i++){

            def date = dateGeneraror()

            while(setOfCruiseNumber.contains(date)){
                date = dateGeneraror()
            }

            if(r.nextInt(5) % 3 == 0)
                result << new Flight(FLIGHT_ID++, cruise, r.nextInt(MAX_DELAY), date, dateAfter(date))
            else
                result << new Flight(FLIGHT_ID++, cruise,0, date, dateAfter(date))

        }
        result
    }



    static List<Company> companyListGenerator(){

        def company = new File(pathToResources + "company_names.txt").text.split(",")
        def result = [] as List<Company>



        for(int i = 0; i < company.size() / 2; ) {
            def cruises = cruiseListGenerator(citiesListGenerator())
            def temp = new Company(company[i++].trim(), company[i++], cruises)
            temp.cruise.forEach{e -> e.setCode(temp.code)}
            result << temp
        }
        result
    }


    static List<Raiting> raitingListGenerator(List<Company> companies, List<Persone> persones){

        def result = [] as List<Raiting>
        int pointer = 0
        Random r = new  Random()

        for(Company company : companies){
            for (Cruise cruise1 : company.cruise)
                for(Flight flight : cruise1.flights){
                    if(pointer >= persones.size())
                        pointer = 0
                    result << new Raiting(persones.get(pointer++), flight, r.nextInt(10) + 1)
                }
        }

        result
    }
}






