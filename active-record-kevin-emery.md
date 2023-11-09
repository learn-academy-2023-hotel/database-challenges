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
