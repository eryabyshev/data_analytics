package generator


import table.Cruise.Cruise
import table.city.City
import table.company.Company
import table.flight.Flight
import table.persone.Persone
import table.raitings.Raiting

import java.text.SimpleDateFormat

class DateGenerator {

    private final  def LENGHT_OF_CRUISE_NUMBER = 4
    private final  def NUNBER_OR_CRUISE = 200
    private def FLIGHT_ID = 1
    private def MAX_DELAY = 24 * 60 * 60 * 1000

    private def setOfCruiseNumber = [] as Set<String>

    private def pathToResources = "/home/parallels/Desktop/Developer/data_sciens/final_work/resources/"

     List<City> citiesListGenerator() {
        def airportsCodesFile = new File(pathToResources + "airports.txt").text.split("\n")
        def airportsNamesFile = new File(pathToResources +"airports_names.txt").text.split("\n")

        def citys = [] as List<City>

        for (def i = 0; i < Integer.min(airportsCodesFile.size(), airportsNamesFile.size()); i++) {
            citys << new City(airportsNamesFile[i].replace("\'", ""), airportsCodesFile[i])
        }
        citys
    }


     List<Persone> personeListGenerator() {
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


     String randomNumber() {
        Random r = new Random()
        return formToCruiseNumber(r.nextInt(9999) + 1, LENGHT_OF_CRUISE_NUMBER)
    }


     List<Cruise> cruiseListGenerator(List<City> cities) {

        def result = []
        Random r = new Random()
        for (int i = 0; i < NUNBER_OR_CRUISE; i++) {
            def arrival = cities.get(r.nextInt(r.nextInt(cities.size()) + 1))
            def departure = cities.get(r.nextInt(r.nextInt(cities.size()) + 1))
            def number = randomNumber()

            while (setOfCruiseNumber.contains(number)){
                number = randomNumber()
            }

            setOfCruiseNumber << number

            def cruise = new Cruise(number, arrival, departure)
            cruise.flights = flightListGenerator(r.nextInt(100) + 50, cruise)
            result << cruise
        }
        result
    }


    static Date getRandomDate(){
        def date = new Date()
        Random r = new Random()

        date.setMonth(r.nextInt(12) + 1)
        date.setDate(r.nextInt(28) + 1)
        date.setHours( r.nextInt(23) + 1)
        date.setMinutes(r.nextInt(59) + 1)
        date.setSeconds(r.nextInt(59) + 1)
        date
    }


    static Date dateAfter(Date date){
        Random r = new Random()
        Date after = new Date(date.getTime() + r.nextInt((10 * 60 * 60 * 1000)))
        after
    }



     List<Flight> flightListGenerator(int count, Cruise cruise){
        Random r = new Random()
         SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss")
        def result = [] as List<Flight>
        for(def i = 0; i < count; i++){

            def date = getRandomDate()

            if(r.nextInt(5) % 3 == 0)
                result << new Flight(FLIGHT_ID++, cruise, r.nextInt(MAX_DELAY), simpleDateFormat.format(date), simpleDateFormat.format(dateAfter(date)))
            else
                result << new Flight(FLIGHT_ID++, cruise,0, simpleDateFormat.format(date), simpleDateFormat.format(dateAfter(date)))

        }
        result
    }



     List<Company> companyListGenerator(){

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


     List<Raiting> raitingListGenerator(List<Company> companies, List<Persone> persones){

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






