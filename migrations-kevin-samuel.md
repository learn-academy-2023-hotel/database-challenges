1. The application will start with just the structure of the database with a model called Movie
 - rails generate model Movie title:string
 - output:   invoke  active_record
             create    db/migrate/ 20231113183905_create_movies.rb
             create    app/models/movie.rb

2. As a developer, I can add a category to the Movie model called category that is a string.
    - rails generate migration add_column_to_movie
    - rails db:migrate

3. As a developer, I can add a category to the Movie model called rating that is a string.
    - rails generate migration add_column_to_movie_rating
    - rails db:migrate

4. As a developer, I can add a category to the Movie model called run_time that is a number.
    - rails generate migration add_column_to_movie_run_time
    - rails db: migrate

5. As a developer, I can add five entries to the database via the Rails console.
    - Movie.create(title: "" , category: "", rating: "", run_time: int)

6. As a developer, I can update the run_time column to be a string.
    rails generate migration change_column_rt_dt_int_str
    rails db:migrate

7. As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
    - Movie.find(5).update(run_time: "1hr 20min")

As a developer, I can rename the column category to be named genre.
    - rails generate migration movie_category_genre
    - rails db:migrate
