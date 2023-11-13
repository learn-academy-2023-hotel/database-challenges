💳 Challenge: Banking Application
As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.

An account owner should have a name and an address.
<!-- create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_cards", force: :cascade do |t|
    t.integer "number"
    t.string "expiration"
    t.string "account_owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end -->

There should be at least three owners in the database.
<!-- [#<Account:0x0000000113b9c198
  id: 1,
  name: "Alex",
  address: "123 Orchard St",
  created_at: Mon, 13 Nov 2023 22:13:31.257589000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 22:13:31.257589000 UTC +00:00>,
 #<Account:0x000000011421f0b0
  id: 2,
  name: "Justin",
  address: "987 Sesame St",
  created_at: Mon, 13 Nov 2023 22:14:00.134545000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 22:14:00.134545000 UTC +00:00>,
 #<Account:0x000000011421f010
  id: 3,
  name: "Trish",
  address: "456 Marina Ave",
  created_at: Mon, 13 Nov 2023 22:14:45.112971000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 22:14:45.112971000 UTC +00:00>]  -->

A credit card has a number and an expiration date.

Remember! Credit cards CANNOT exist without an account owner.

Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)

Each account owner should have at least one credit card.
<!-- [#<CreditCard:0x000000010af4b400
  id: 1,
  number: 12345678,
  expiration: "11/24",
  created_at: Mon, 13 Nov 2023 22:53:11.844419000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 22:53:11.844419000 UTC +00:00,
  account_id: 1>]  -->

<!-- #<CreditCard:0x000000010adc5f18
 id: 4,
 number: 23456789,
 expiration: "10/24",
 created_at: Mon, 13 Nov 2023 23:08:31.443969000 UTC +00:00,
 updated_at: Mon, 13 Nov 2023 23:08:31.443969000 UTC +00:00,
 account_id: 2>  -->

<!-- #<CreditCard:0x000000010ac4c308
 id: 5,
 number: 34567890,
 expiration: "01/25",
 created_at: Mon, 13 Nov 2023 23:09:35.269633000 UTC +00:00,
 updated_at: Mon, 13 Nov 2023 23:09:35.269633000 UTC +00:00,
 account_id: 3>  -->

At least one account owner should have three credit cards.

🏔 Stretch Goals
Add a credit limit to each card.
<!-- class AddColumnCreditLimit < ActiveRecord::Migration[7.0]
  def change
    add_column :credit_cards, :credit_limit, :integer
  end
end -->


Find the total credit extended to an owner who has multiple credit cards.
<!-- total = CreditCard.where(account_id:1).sum(:credit_limit) -->