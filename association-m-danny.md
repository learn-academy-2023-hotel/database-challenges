✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.

<!-- rails new associations -d postgresql -T -->

An account owner should have a name and an address.

<!-- rails g model AccountOwner name:string address:string
 -->

There should be at least three owners in the database.

<!-- AccountOwner.create(name: 'john', address: '123 main st') -->
<!-- AccountOwner.create(name: 'jane', address: '1234 random st') -->
<!-- AccountOwner.create(name: 'Danny', address: '666 middle of nowhere -->

A credit card has a number and an expiration date.
Remember! Credit cards CANNOT exist without an account owner.
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)

<!-- john = AccountOwner.first -->
<!-- john.credit_cards.create(number:123456, expiration:'08/2029') -->


Each account owner should have at least one credit card.

<!-- jane = AccountOwner.find_by(name:'jane') -->
<!-- jane.credit_cards.create(number:654321, expiration:'06/2028') -->
<!-- danny = AccountOwner.last -->
<!-- danny.credit_cards.create(number:6193956, expiration:'04/2016') -->

At least one account owner should have three credit cards.

<!-- danny.credit_cards.create(number:987654, expiration:'06/2036') -->
<!-- danny.credit_cards.create(number:456789, expiration:'06/2030') -->

🏔 Stretch Goals
Add a credit limit to each card.

<!-- cards = CreditCard.all -->
<!-- cards.update(limit:20000) -->

Find the total credit extended to an owner who has multiple credit cards.

<!-- class AccountOwner < ApplicationRecord
    has_many :credit_cards
    def total_limit
    credit_cards.sum(:limit)
    end
end -->

<!-- total_limit = danny.total_limit -->
 <!-- 60000  -->