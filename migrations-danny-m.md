rails new favorite-movies -d postgresql -T

# ------------------------

<!-- As a developer, I can add a category to the Movie model called category that is a string.
As a developer, I can add a category to the Movie model called rating that is a string.
As a developer, I can add a category to the Movie model called run_time that is a number. -->

rails generate model Movie category:string rating:string run_time:integer 

Movie.create(category:'Comedy', rating:'3 stars', run_time:90)

Movie.create(category:'Drama', rating:'4 stars', run_time:59)

Movie.create(category:'Action', rating:'2 stars', run_time:173)

Movie.create(category:'Thriller', rating:'1 stars', run_time:30)

# ------------------------

<!-- As a developer, I can add five entries to the database via the Rails console. -->

Movie.create(category:'Scary', rating:'5 stars', run_time:60)

# ------------------------

<!-- As a developer, I can update the run_time column to be a string. -->

class ChangeDataTypeForRunTime < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :run_time, :string
  end
end

# ------------------------

<!-- As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes') -->

class UpdateRunTimeMovies < ActiveRecord::Migration[7.1]
  def up  <!-- def up is to add an additional default values, in this case we're using string interpolation -->
    Movie.all.each do |movie| <!--|movie| is our block parameter that will represent each individual movie that is recorded when iterated through in the Movie model. -->
      movie.update(run_time: "#{movie.run_time} minutes") <!-- update block parameter movie's run_time to be our original inputted run_time and add in minutes via string interpolation. -->
    end
  end
  <!-- Below is how to remove or "replace" in this case. -->
  <!-- def down
    Movie.all.each do |movie|
      movie.update(run_time: movie.run_time.sub(' minutes', '')) <!-- subsitute ' minutes' for '(an empty string)' -->
    end
  end -->
end

# ------------------------
<!-- As a developer, I can rename the column category to be named genre. -->

rails generate migration ChangeNameOfCategoryToGenre

class ChangeNameOfCategoryToGenre < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :category, :genre
  end
end