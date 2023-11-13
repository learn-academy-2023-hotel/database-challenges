As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.


<!-- The banking application data should be managed by a PostgreSQL database in a Rails application. -->
<!-- An account owner should have a name and an address. -->
<!-- There should be at least three owners in the database.
 Owner.create(name:"Jackson Pruett", address: "Newton")
 Owner.create(name:"Harry Potter", address: "England")
 Owner.create(name:"Joseph Kong", address: "Alameda
 ") -->

<!-- A credit card has a number and an expiration date. -->
<!-- Remember! Credit cards CANNOT exist without an account owner.
 rails g model CreditCrad number:integer expiration_date person_id: integer -->


Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
At least one account owner should have three credit cards.