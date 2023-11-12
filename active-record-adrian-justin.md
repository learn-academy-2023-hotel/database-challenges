The rolodex application data should be managed by a PostgreSQL database in a Rails application.

The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.

Add five friends and family members to the people table using the Rails console.

Retrieve all the people in the database.
- Person.all

TRANSACTION (0.2ms)  BEGIN
  Person Create (0.5ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Brock"], ["last_name", "Harrison"], ["phone", "2222222221"], ["created_at", "2023-11-09 19:13:25.728357"], ["updated_at", "2023-11-09 19:13:25.728357"]]
  TRANSACTION (0.6ms)  COMMIT
 => 
#<Person:0x00000001099430e0
 id: 5,
 first_name: "Brock",
 last_name: "Harrison",
 phone: "2222222221",
 created_at: Thu, 09 Nov 2023 19:13:25.728357000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:13:25.728357000 UTC +00:00> 
3.2.0 :007 > Person.all
  Person Load (0.5ms)  SELECT "people".* FROM "people"
 => 
[#<Person:0x0000000109e2c818
  id: 1,
  first_name: "Justin",
  last_name: "Pinkard",
  phone: "123456789",
  created_at: Thu, 09 Nov 2023 19:07:27.979603000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:07:27.979603000 UTC +00:00>,
 #<Person:0x0000000109e2c6d8
  id: 2,
  first_name: "Adrian",
  last_name: "Carranza",
  phone: "555555555",
  created_at: Thu, 09 Nov 2023 19:11:15.316551000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:11:15.316551000 UTC +00:00>,
 #<Person:0x0000000109e2c598
  id: 3,
  first_name: "Tricia",
  last_name: "Sykes",
  phone: "1111111111",
  created_at: Thu, 09 Nov 2023 19:12:01.325798000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:12:01.325798000 UTC +00:00>,
 #<Person:0x0000000109e2c458
  id: 4,
  first_name: "Ash",
  last_name: "Ketchums",
  phone: "0000000001",
  created_at: Thu, 09 Nov 2023 19:12:42.070012000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:12:42.070012000 UTC +00:00>,
 #<Person:0x0000000109e2c318
  id: 5,
  first_name: "Brock",
  last_name: "Harrison",
  phone: "2222222221",
  created_at: Thu, 09 Nov 2023 19:13:25.728357000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:13:25.728357000 UTC +00:00>] 
3.2.0 :008 > 

Retrieve the third person in the database.
3.2.0 :008 > Person.find(3)

#<Person:0x000000010984b908
 id: 3,
 first_name: "Tricia",
 last_name: "Sykes",
 phone: "1111111111",
 created_at: Thu, 09 Nov 2023 19:12:01.325798000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:12:01.325798000 UTC +00:00> 
3.2.0 :009 > 


Retrieve only the first name of the first person in the database.
- Person.first.first_name

  Person Load (0.4ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => "Justin" 

Remove the last person from the database.
- Person.last.delete

#<Person:0x0000000109849608
 id: 5,
 first_name: "Brock",
 last_name: "Harrison",
 phone: "2222222221",
 created_at: Thu, 09 Nov 2023 19:13:25.728357000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:13:25.728357000 UTC +00:00> 
3.2.0 :012 > 

Add yourself to the people table.
- Person.create first_name: "Your", last_name: "Self", phone:"7777777779"

#<Person:0x0000000109d043a0
 id: 6,
 first_name: "Your",
 last_name: "Self",
 phone: "7777777779",
 created_at: Thu, 09 Nov 2023 19:19:39.476593000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:19:39.476593000 UTC +00:00> 

Retrieve all the people that have the same last name as you.
- Person.where(last_name:"Carranza") 

[#<Person:0x0000000109e25c98
  id: 2,
  first_name: "Adrian",
  last_name: "Carranza",
  phone: "555555555",
  created_at: Thu, 09 Nov 2023 19:11:15.316551000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:11:15.316551000 UTC +00:00>] 

Retrieve only the first person from the list of people that have the same last name as you.

- Person.where(last_name:"Carranza").first
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1 ORDER BY "people"."id" ASC LIMIT $2  [["last_name", "Carranza"], ["LIMIT", 1]]

#<Person:0x0000000109eaadd0
 id: 2,
 first_name: "Adrian",
 last_name: "Carranza",
 phone: "3333333333",
 created_at: Thu, 09 Nov 2023 19:11:15.316551000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:24:43.230923000 UTC +00:00> 

Update the phone number of the second person in the database.

- Person.find(2).update(phone: "3333333333")
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  TRANSACTION (0.1ms)  BEGIN
  Person Update (0.3ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "3333333333"], ["updated_at", "2023-11-09 19:24:43.230923"], ["id", 2]]
  TRANSACTION (0.2ms)  COMMIT
 => true 
- Person.find(2)
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => 
#<Person:0x000000010984ba48
 id: 2,
 first_name: "Adrian",
 last_name: "Carranza",
 phone: "3333333333",
 created_at: Thu, 09 Nov 2023 19:11:15.316551000 UTC +00:00,
 updated_at: Thu, 09 Nov 2023 19:24:43.230923000 UTC +00:00> 
3.2.0 :019 > 

Retrieve the last name of the third person in the database.
- Person.find(3).last_name

  Person Load (0.7ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => "Sykes" 


Update all the family members with the same last name as you to have the same phone number as you.

- family_name.update(phone: "8888888888")
  TRANSACTION (0.2ms)  BEGIN
  Person Update (0.5ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "8888888888"], ["updated_at", "2023-11-09 19:39:01.037500"], ["id", 2]]
  TRANSACTION (1.4ms)  COMMIT

Remove all family members that do not have your last name.

- not_family.destroy_all
  TRANSACTION (0.5ms)  BEGIN
  Person Destroy (0.7ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 1]]
  TRANSACTION (0.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  Person Destroy (0.3ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 3]]
  TRANSACTION (0.2ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  Person Destroy (0.3ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 4]]
  TRANSACTION (0.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  Person Destroy (0.3ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 6]]
  TRANSACTION (0.2ms)  COMMIT
 => 
[#<Person:0x0000000109ea5290
  id: 1,
  first_name: "Justin",
  last_name: "Pinkard",
  phone: "123456789",
  created_at: Thu, 09 Nov 2023 19:07:27.979603000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:07:27.979603000 UTC +00:00>,
 #<Person:0x0000000109ea5150
  id: 3,
  first_name: "Tricia",
  last_name: "Sykes",
  phone: "1111111111",
  created_at: Thu, 09 Nov 2023 19:12:01.325798000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:12:01.325798000 UTC +00:00>,
 #<Person:0x0000000109ea5010
  id: 4,
  first_name: "Ash",
  last_name: "Ketchums",
  phone: "0000000001",
  created_at: Thu, 09 Nov 2023 19:12:42.070012000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:12:42.070012000 UTC +00:00>,
 #<Person:0x0000000109ea4ed0
  id: 6,
  first_name: "Your",
  last_name: "Self",
  phone: "7777777779",
  created_at: Thu, 09 Nov 2023 19:19:39.476593000 UTC +00:00,
  updated_at: Thu, 09 Nov 2023 19:19:39.476593000 UTC +00:00>] 
3.2.0 :035 > Person.all
  Person Load (0.5ms)  SELECT "people".* FROM "people"
