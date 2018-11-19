package generator

import table.Cruise.Cruise
import table.city.City
import table.company.Company
import groovy.sql.Sql
import table.flight.Flight

class DataBaseConnector {


    @Grapes(
            @Grab(group ='org.postgresql', module ='postgresql', version='42.2.5')
    )

    static final def URL = 'jdbc:postgresql://172.18.0.3:5432/postgres'
    static final def DRIVER = 'org.postgresql.Driver'
    private static def instance

    private static def getInstance(){
        instance = Sql.newInstance(URL, DRIVER)
        instance.autoCommit = false
        instance
    }


    static void insetIntoCompany(List<Company> comanies){

        def sql = "insert into company (code, name) values"

        for(int i = 0; i < comanies.size(); i++){

            if(i == comanies.size() -1)
                sql += "('${comanies.get(i).code}', '${comanies.get(i).name}');"
            else
                sql += "('${comanies.get(i).code}', '${comanies.get(i).name}'),"
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


    static def getTimeStamps(Date d){
        return  "'${d.getYear()}-${d.getMonth()}-${d.getDate()} " +
                "${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}'::timestamp"

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
        def sql = "insert into city("
    }




    private static def execute(Sql instance, def sqlStr, def tableName){

        try {
            instance.execute(sqlStr)
            instance.commit()
            println("Successfully committed into ${tableName} table")
        }catch{
            instance.rollback()
            println("Transaction rollback for ${tableName} table")
        }
        instance.close()
    }




}
