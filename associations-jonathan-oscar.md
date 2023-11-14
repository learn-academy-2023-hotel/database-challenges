<!-- The banking application data should be managed by a PostgreSQL database in a Rails application.-->

<!-- An account owner should have a name and an address. -->
rails generate model Banking name:string address:string

<!-- There should be at least three owners in the database. -->
#<Banking:0x000000010959a560
 id: 1,
 name: "Jonathan",
 address: "1234 blah blah",
 created_at: Mon, 13 Nov 2023 22:28:21.669562000 UTC +00:00,
 updated_at: Mon, 13 Nov 2023 22:28:21.669562000 UTC +00:00> 
3.2.0 :002 > Banking.create(name:'Oscar', address:'54321 blah')
  TRANSACTION (0.2ms)  BEGIN
  Banking Create (0.3ms)  INSERT INTO "bankings" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Oscar"], ["address", "54321 blah"], ["created_at", "2023-11-13 22:29:12.283129"], ["updated_at", "2023-11-13 22:29:12.283129"]]
  TRANSACTION (0.9ms)  COMMIT
 => 
#<Banking:0x000000010cd1b408
 id: 2,
 name: "Oscar",
 address: "54321 blah",
 created_at: Mon, 13 Nov 2023 22:29:12.283129000 UTC +00:00,
 updated_at: Mon, 13 Nov 2023 22:29:12.283129000 UTC +00:00> 
3.2.0 :003 > Banking.create(name:'Trish', address:'098776 blah')
  TRANSACTION (0.2ms)  BEGIN
  Banking Create (0.7ms)  INSERT INTO "bankings" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Trish"], ["address", "098776 blah"], ["created_at", "2023-11-13 22:29:43.344868"], ["updated_at", "2023-11-13 22:29:43.344868"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Banking:0x000000010cc9a010
 id: 3,
 name: "Trish",
 address: "098776 blah",
 created_at: Mon, 13 Nov 2023 22:29:43.344868000 UTC +00:00,
 updated_at: Mon, 13 Nov 2023 22:29:43.344868000 UTC +00:00> 
3.2.0 :004 > 


<!-- A credit card has a number and an expiration date. -->
[#<CreditCard:0x000000011bbdc088
  id: 1,
  number: "111111",
  expiration: -2036,
  created_at: Mon, 13 Nov 2023 23:51:39.079791000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 23:51:39.079791000 UTC +00:00,
  banking_id: 1>,
 #<CreditCard:0x000000011bbdbf48
  id: 2,
  number: "111111",
  expiration: 0,
  created_at: Mon, 13 Nov 2023 23:57:49.846182000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 23:57:49.846182000 UTC +00:00,
  banking_id: 1>,
 #<CreditCard:0x000000011bbdbe08
  id: 3,
  number: "111111",
  expiration: 2023,
  created_at: Tue, 14 Nov 2023 00:10:59.027726000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:10:59.027726000 UTC +00:00,
  banking_id: 1>,
 #<CreditCard:0x000000011bbdbcc8
  id: 4,
  number: "22222222",
  expiration: 2030,
  created_at: Tue, 14 Nov 2023 00:11:52.877280000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:11:52.877280000 UTC +00:00,
  banking_id: 2>,
 #<CreditCard:0x000000011bbdbb88
  id: 5,
  number: "333333",
  expiration: 3090,
  created_at: Tue, 14 Nov 2023 00:12:32.722968000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:12:32.722968000 UTC +00:00,
  banking_id: 3>] 
3.2.0 :013 > 

Remember! Credit cards CANNOT exist without an account owner.

Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
At least one account owner should have three credit cards. 

[#<CreditCard:0x000000011bbdc088
  id: 1,
  number: "111111",
  expiration: -2036,
  created_at: Mon, 13 Nov 2023 23:51:39.079791000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 23:51:39.079791000 UTC +00:00,
  banking_id: 1>,
 #<CreditCard:0x000000011bbdbf48
  id: 2,
  number: "111111",
  expiration: 0,
  created_at: Mon, 13 Nov 2023 23:57:49.846182000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 23:57:49.846182000 UTC +00:00,
  banking_id: 1>,
 #<CreditCard:0x000000011bbdbe08
  id: 3,
  number: "111111",
  expiration: 2023,
  created_at: Tue, 14 Nov 2023 00:10:59.027726000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:10:59.027726000 UTC +00:00,
  banking_id: 1>,
 #<CreditCard:0x000000011bbdbcc8
  id: 4,
  number: "22222222",
  expiration: 2030,
  created_at: Tue, 14 Nov 2023 00:11:52.877280000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:11:52.877280000 UTC +00:00,
  banking_id: 2>,
 #<CreditCard:0x000000011bbdbb88
  id: 5,
  number: "333333",
  expiration: 3090,
  created_at: Tue, 14 Nov 2023 00:12:32.722968000 UTC +00:00,
  updated_at: Tue, 14 Nov 2023 00:12:32.722968000 UTC +00:00,
  banking_id: 3>] 
3.2.0 :013 > 
