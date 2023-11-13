<!-- As a developer, I can add a category to the Movie model called category that is a string.
class AddColumnToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :category, :string
  end
end

As a developer, I can add a category to the Movie model called rating that is a string.
class AddRatingToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :rating, :string
  end
end

As a developer, I can add a category to the Movie model called run_time that is a number.
class AddRunTimeToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :run_time, :integer
  end
end

As a developer, I can add five entries to the database via the Rails console.
Movie.create(title: "The Hobbit", category:"action", rating: "9/10", run_time: 2)
Movie.create(title: "Lord of The Ring: The Fellowship of the Ring", category:"action", rating: "9/10", run_
time: 3)


As a developer, I can update the run_time column to be a string.
As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
As a developer, I can rename the column category to be named genre. -->
