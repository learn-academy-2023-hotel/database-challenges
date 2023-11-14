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
<!-- Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
 rails g model CreditCrad number:integer expiration_date person_id: integer -->

<!-- Each account owner should have at least one credit card. -->
<!-- [#<CreditCard:0x00000001126badd8
  id: 1,
  number: "123456",
  expiration_date: "12/12",
  created_at: Tue, 14 Nov 2023 00:10:56.488429000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:10:56.488429000 UTC +00:00,
  owner_id: 1>,
 #<CreditCard:0x00000001126bac98
  id: 2,
  number: "123456",
  expiration_date: "12/56",
  created_at: Tue, 14 Nov 2023 00:12:20.005862000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:12:20.005862000 UTC +00:00,
  owner_id: 1>,
 #<CreditCard:0x00000001126bab58
  id: 3,
  number: "123456",
  expiration_date: "12/66",
  created_at: Tue, 14 Nov 2023 00:14:48.570843000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:14:48.570843000 UTC +00:00,
  owner_id: 1>,
 #<CreditCard:0x00000001126baa18
  id: 4,
  number: "12346",
  expiration_date: "1/66",
  created_at: Tue, 14 Nov 2023 00:16:11.175348000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:16:11.175348000 UTC +00:00,
  owner_id: 2>,
 #<CreditCard:0x00000001126ba8d8
  id: 5,
  number: "12346",
  expiration_date: "1/66",
  created_at: Tue, 14 Nov 2023 00:16:15.710448000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:16:15.710448000 UTC +00:00,
  owner_id: 2>,
 #<CreditCard:0x00000001126ba798
  id: 6,
  number: "12346",
  expiration_date: "1/66",
  created_at: Tue, 14 Nov 2023 00:16:30.285263000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:16:30.285263000 UTC +00:00,
  owner_id: 3>]  -->

<!-- At least one account owner should have three credit cards.
.2.0 :017 > joseph.credit_cards.all
  CreditCard Load (3.7ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 1]]
 =>
[#<CreditCard:0x000000011267a148
  id: 1,
  number: "123456",
  expiration_date: "12/12",
  created_at: Tue, 14 Nov 2023 00:10:56.488429000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:10:56.488429000 UTC +00:00,
  owner_id: 1>,
 #<CreditCard:0x000000011267a008
  id: 2,
  number: "123456",
  expiration_date: "12/56",
  created_at: Tue, 14 Nov 2023 00:12:20.005862000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:12:20.005862000 UTC +00:00,
  owner_id: 1>,
 #<CreditCard:0x0000000112679ec8
  id: 3,
  number: "123456",
  expiration_date: "12/66",
  created_at: Tue, 14 Nov 2023 00:14:48.570843000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:14:48.570843000 UTC +00:00,
  owner_id: 1>]  -->
