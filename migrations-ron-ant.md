<!-- As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.

 rails new favorite-movies -d postgresql -T

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.

rails g model Movie title:string


As a developer, I can add a category to the Movie model called rating that is a string.

class AddRatingToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :rating, :string
  end
end

As a developer, I can add a category to the Movie model called run_time that is a number.

class AddRunTimeToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :run_time, :integer
  end
end


As a developer, I can add five entries to the database via the Rails console.

3.2.0 :012 > Movie.create(title: "John Wick", rating:"R", run_time: 101)

As a developer, I can update the run_time column to be a string.

learnacademy@MacBook-Air favorite-movies % rails g migration ChangeRunTimeToString

class ChangeRunTimeToString < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :run_time, :string
  end
end

learnacademy@MacBook-Air favorite-movies % rails db:migrate

As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')

3.2.0 :002 > movie_run = Movie.all

movie_run.update run_time: "80 minutes"


As a developer, I can rename the column category to be named genre. -->

class ChangeCatToGenre < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :cateogry, :genre
  end
end
