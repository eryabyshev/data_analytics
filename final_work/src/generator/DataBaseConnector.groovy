package generator

import table.Cruise.Cruise
import table.city.City
import table.company.Company
import groovy.sql.Sql
import table.flight.Flight
import table.persone.Persone
import table.raitings.Raiting


class DataBaseConnector {


    @Grapes(
            @Grab(group ='org.postgresql', module ='postgresql', version='42.2.5')
    )

    static final def URL = 'jdbc:postgresql://172.18.0.3:5432/postgres'
    static final def DRIVER = 'org.postgresql.Driver'


    private static def getInstance(){
        def instance = Sql.newInstance(URL, DRIVER)
        instance.connection.autoCommit = false
        instance
    }


    static void insetIntoCompany(List<Company> comanies){

        def sql = "insert into company (code, name) values"

        for(int i = 0; i < comanies.size(); i++){

            if(i == comanies.size() -1)
                sql += "('${comanies.get(i).code}', '${comanies.get(i).name.trim()}');"
            else
                sql += "('${comanies.get(i).code}', '${comanies.get(i).name.trim()}'),"
        }

        execute(getInstance(), sql, 'company')

    }



    static void insertIntoCruise(List<Cruise> cruises){

        def sql = "insert into cruise(code, number, arrival, departure) values"

        for(int i = 0; i < cruises.size(); i++){
            if(i == cruises.size() - 1)
                sql += "('${cruises.get(i).code}', ${cruises.get(i).number}, '${cruises.get(i).arrival.code}', " +
                        "'${cruises.get(i).departure.code}');"
            else
                sql += "('${cruises.get(i).code}', ${cruises.get(i).number}, '${cruises.get(i).arrival.code}', " +
                        "'${cruises.get(i).departure.code}'),"
        }
        execute(getInstance(), sql, 'cruise')
    }


    static def getTimeStamps(def d){
        return  "'${d}'::timestamp"

    }


    static void insertIntoFlights(List<Flight> flights){

        def sql = "insert into flights(id, cruise_number, delay, departure, arrival) values"

        for(int i = 0; i < flights.size(); i++){
            def f = flights.get(i)

            def departure = getTimeStamps(f.departure)
            def arrival = getTimeStamps(f.arrival)

            if(i == flights.size() - 1)
                sql += "(${f.id}, ${f.cruise.number}, ${f.delay}, ${departure}, ${arrival});"
            else
                sql += "(${f.id}, ${f.cruise.number}, ${f.delay}, ${departure}, ${arrival}),"

        }
        execute(getInstance(), sql, 'flights')

    }



    static void insertIntoCitys(List<City>cities){
        def sql = "insert into city(code, name) values"

        for(int i = 0; i < cities.size(); i++){

            if(i == cities.size() - 1)
                sql += "('${cities.get(i).code}', '${cities.get(i).name}');"
            else
                sql += "('${cities.get(i).code}', '${cities.get(i).name}'),"
        }
        execute(getInstance(), sql, 'city')
    }

    static void insertIntoPerson(List<Persone> people){
        def sql = "insert into person(id, firstname, lastname) values"

        for(int i = 0; i < people.size(); i++) {
            if (i == people.size() - 1)
                sql += "(${people.get(i).id}, '${people.get(i).firdtname}', '${people.get(i).lastname}');"
            else
                sql += "(${people.get(i).id}, '${people.get(i).firdtname}', '${people.get(i).lastname}'),"
        }
        execute(getInstance(), sql, 'person')

    }


    static void insertIntoRating(List<Raiting> raitings){
        def sql = "insert into rating(person_id, flight_id, point) values"

        int i = 0;
        for(; i < raitings.size(); i+=100)
            sql += "(${raitings.get(i).persone.id}, ${raitings.get(i).flight.id}, ${raitings.get(i).points}),"

        i = raitings.size() - 1
        sql += "(${raitings.get(i).persone.id}, ${raitings.get(i).flight.id}, ${raitings.get(i).points});"

        execute(getInstance(), sql, 'rating')
    }




    private static def execute(Sql instance, def sqlStr, def tableName){

        try {
            instance.execute(sqlStr)
            instance.commit()
            println("Successfully committed into ${tableName} table")
        }catch(Exception e){
            instance.rollback()
            println("Transaction rollback for ${tableName} table")
        }
        instance.close()
    }
}
