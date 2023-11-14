1. The rolodex application data should be managed by a PostgreSQL database in a Rails application.
    - cd to Desktop
    - rails new active-record -d postgresql -T
    - cd to active-record
    - run rails db:create
    - run rails server

2. The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
    - input in terminal under active-record a model class for Person:
        rails generate model Person first_name:string last_name:string phone:string
    - will output:
      invoke  active_record
      create    db/migrate/20231109183638_create_people.rb
      create    app/models/person.rb
     
    - execute the migrate file in order to create our Person table in the database:
        rails db:migrate
    
    - at this point we have a table in the database for People

3. Add five friends and family members to the people table using the Rails console.
    - Person.create(first_name: "Rhonda", last_name:"Nerat", phone: "999-111-8521")
    - Executed the above 5 times with 5 different names and numbers

4. Retrieve all the people in the database.
    - Person.all
    - Printed all 5 instances of Person

5. Retrieve the third person in the database.
    - Person.find(3)

6. Retrieve only the first name of the first person in the database.
    - Person.first.first_name

7. Remove the last person from the database.
     - Person.last.destroy

8. Add yourself to the people table.
    - Person.create(first_name: "Kevin", last_name:"Rojas", phone: "999-111-3333")

9. Retrieve all the people that have the same last name as you
    - Person.where(last_name:"Rojas")

10. Retrieve only the first person from the list of people that have the same last name as you.
    - Person.where(last_name:"Rojas").first

11. Update the phone number of the second person in the database.
    - Person.find(2).update(phone:"999-596-8888")

12. Retrieve the last name of the third person in the database.
    - Person.find(3).last_name 

_______________________________STRETCH___________________________

1. Update all the family members with the same last name as you to have the same phone number as you.
    - created variable pnumber for Kevin's phone number
    - Person.where(last_name:"Rojas").update(phone:pnumber)

2. Remove all family members that do not have your last name.
    - Person.where.not(last_name:"Rojas").destroy_all


