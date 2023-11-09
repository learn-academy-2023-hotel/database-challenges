<!-- The rolodex application data should be managed by a PostgreSQL database in a Rails application.

The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
    rails generate model Person first_name:string lastname:string phone_attribute:string
Add five friends and family members to the people table using the Rails console.
Retrieve all the people in the database. -->

    <!-- 3.2.0 :010 > Person.all
  Person Load (2.1ms)  SELECT "people".* FROM "people"
 => 
[#<Person:0x0000000105e9ca90
  id: 1,
  first_name: "joseph",
  lastname: "kong",
  phone_attribute: "1234567890",
  created_at: Thu, 09 Nov 2023 19:20:10.576163000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:20:10.576163000 UTC +00:00>,
 #<Person:0x0000000105e9c950
  id: 2,
  first_name: "chandler",
  lastname: "gipson",
  phone_attribute: "0987654321",
  created_at: Thu, 09 Nov 2023 19:26:33.710036000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:26:33.710036000 UTC +00:00>,
 #<Person:0x0000000105e9c810
  id: 3,
  first_name: "rob",
  lastname: "william",
  phone_attribute: "1987654321",
  created_at: Thu, 09 Nov 2023 19:27:34.324285000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:27:34.324285000 UTC +00:00>,
 #<Person:0x0000000105e9c6d0
  id: 4,
  first_name: "bob",
  lastname: "builder",
  phone_attribute: "1987654322",
  created_at: Thu, 09 Nov 2023 19:28:37.559802000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:28:37.559802000 UTC +00:00>,
 #<Person:0x0000000105e9c590
  id: 5,
  first_name: "bill",
  lastname: "clinton",
  phone_attribute: "91987654322",
  created_at: Thu, 09 Nov 2023 19:29:45.840744000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:29:45.840744000 UTC +00:00>,
 #<Person:0x0000000105e9c450
  id: 6,
  first_name: "spongybob",
  lastname: "squarepants",
  phone_attribute: "91987654322",
  created_at: Thu, 09 Nov 2023 19:30:46.769140000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:30:46.769140000 UTC +00:00>]  -->


<!-- Retrieve the third person in the database. -->

3.2.0 :011 > Person.find(3)

<!-- Retrieve only the first name of the first person in the database. -->

3.2.0 :011 > Person.find(3)
  Person Load (1.2ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => 
#<Person:0x000000010683c320
 id: 3,
 first_name: "rob",
 lastname: "william",
 phone_attribute: "1987654321",
 created_at: Thu, 09 Nov 2023 19:27:34.324285000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:27:34.324285000 UTC +00:00> 
<!-- 
Remove the last person from the database.
    3.2.0 :014 > Person.last.destroy
Add yourself to the people table.

3.2.0 :017 > Person.create(first_name:'kassy', lastname:'gipson', phone_attribute:'0987654321')

Retrieve all the people that have the same last name as you.

3.2.0 :019 > Person.where(lastname:"gipson")


Retrieve only the first person from the list of people that have the same last name as you.

3.2.0 :020 > Person.where(lastname:"gipson").first

Update the phone number of the second person in the database.

3.2.0 :021 > person = Person.find(2)
  Person Load (0.9ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => 
#<Person:0x0000000105e958d0
... 
3.2.0 :022 > person
 => 
#<Person:0x0000000105e958d0
 id: 2,
 first_name: "chandler",
 lastname: "gipson",
 phone_attribute: "0987654321",
 created_at: Thu, 09 Nov 2023 19:26:33.710036000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:26:33.710036000 UTC +00:00> 
3.2.0 :023 > person.update(phone_attribute:'new#123123123')
  TRANSACTION (0.3ms)  BEGIN
  Person Update (0.5ms)  UPDATE "people" SET "phone_attribute" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone_attribute", "new#123123123"], ["updated_at", "2023-11-09 19:46:33.125821"], ["id", 2]]
  TRANSACTION (0.8ms)  COMMIT
 => true 
3.2.0 :024 > person
 => 
#<Person:0x0000000105e958d0
 id: 2,
 first_name: "chandler",
 lastname: "gipson",
 phone_attribute: "new#123123123",
 created_at: Thu, 09 Nov 2023 19:26:33.710036000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:46:33.125821000 UTC +00:00> 
3.2.0 :025 > 


Retrieve the last name of the third person in the database. -->
3.2.0 :025 > Person.find(3).lastname 