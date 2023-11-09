<!-- 📇 Challenge: Rolodex

Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.

As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria

The rolodex application data should be managed by a PostgreSQL database in a Rails application.
The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
Add five friends and family members to the people table using the Rails console.
Retrieve all the people in the database.
 Person.create(first_name: 'Zetti', last_name: 'Benford', phone: '619-719-9197')
 Person.create(first_name: 'Zenia', last_name: 'Varela', phone: '619-852-8795')
  Person.create(first_name: 'Taylor', last_name: 'Vang', phone: '619-719-9197')
  Person.create(first_name: 'Marinda', last_name: 'Vang', phone: '619-719-9197')

Retrieve the third person in the database.
 Person.find(3)
Retrieve only the first name of the first person in the database.
name = Person.first.first_name

Remove the last person from the database.
name_d = Person.last
name_d.destroy

Add yourself to the people table.
 Person.create(first_name: 'Marinda', last_name: 'Vang', phone: '619-719-9197')

Retrieve all the people that have the same last name as you.
Person.where(last_name:  'Varela')
Retrieve only the first person from the list of people that have the same last name as you.
name = Person.where(last_name:  'Varela')
name.first

Update the phone number of the second person in the database.
name = Person.find(2)
name.phone = '619-000-0001'
name

Retrieve the last name of the third person in the database.
 name = Person.find(3)
  name.last_name

🏔 Stretch Goals

Update all the family members with the same last name as you to have the same phone number as you.
name = Person.where(last_name: 'Vang')
name.update_all(phone: '619-123-3456')

Remove all family members that do not have your last name.
name = Person.where.not(last_name: 'Varela')
name.all
name.destroy_all

 -->
