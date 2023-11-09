📇 Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.

As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria

The rolodex application data should be managed by a PostgreSQL database in a Rails application.
<!-- rails new active-record -d postgresql -T -->
<!-- cd active-record -->
<!-- rails db:create -->

The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
<!-- rails generate model Person first_name:string last_name:string phone:string -->
<!-- rails db:migrate
 -->
Add five friends and family members to the people table using the Rails console.
<!-- rails c -->
<!-- Person.create(first_name:'John', last_name:'Smith', phone:'098-7654') -->

Retrieve all the people in the database.
<!-- Person.all -->

Retrieve the third person in the database.
<!-- Person.find(3)-->

Retrieve only the first name of the first person in the database.
<!-- Person.first.first_name -->

Remove the last person from the database.
<!-- Person.last.destroy -->

Add yourself to the people table.
<!-- (Reference adding people to database) -->

Retrieve all the people that have the same last name as you.
<!-- Person.where(last_name:'Nguyen') -->

Retrieve only the first person from the list of people that have the same last name as you.
<!-- Person.where(last_name:'Nguyen').last -->

Update the phone number of the second person in the database.
<!-- person = Person.find(2) -->
<!-- person.update(phone:'290-1234') -->

Retrieve the last name of the third person in the database.
<!-- Person.find(3).last_name -->

🏔 Stretch Goals
Update all the family members with the same last name as you to have the same phone number as you.
<!-- person = Person.where(last_name:'Nguyen') -->
<!-- person.update(phone:'321-0987') -->

Remove all family members that do not have your last name.
<!-- person = Person.where.not(last_name:'Nguyen') -->
<!-- person.destroy_all -->