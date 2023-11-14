<!-- 🍿 Challenge: Favorite Movies

As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.

$ rails generate model Movie title:string


$ rails db:migrate

👩‍💻 Developer Tasks

As a developer, I can add a category to the Movie model called category that is a string.

$ rails generate migration AddCategoryColumn

class AddCategoryColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :category, :string
  end
end

$ rails db:migrate

As a developer, I can add a category to the Movie model called rating that is a string.

$ rails generate migration AddRatingColumn

class AddRatingColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :rating, :string
  end
end

$ rails db:migrate

As a developer, I can add a category to the Movie model called run_time that is a number.

$ rails generate migration AddRunTimeColumn

class AddRunTimeColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :run_time, :integer
  end
end

$ rails db:migrate

As a developer, I can add five entries to the database via the Rails console.

$ Movie.create(title:"Harry Potter and the Sorcerer's Stone", categor
y:"Fantasy", rating:"PG", run_time:152)

As a developer, I can update the run_time column to be a string.

$ rails g migration ChangeRunTimeDataType

class ChangeRunTimeDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :run_time, :string
  end
end

$ rails db:migrate

As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')

$ rails c
$ movie=Movie.last
$ movie.update(run_time:"138 min")
Above 2 steps complete for all 5 movies
$ exit
$rails db:migrate


As a developer, I can rename the column category to be named genre. 

$ rails g migration ChangeCategoryToGenre

class ChangeCategoryToGenre < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :category, :genre
  end
end

$ rails db:migrate

[#<Movie:0x00000001070bcab8
id: 1,
title: "Twilight",
created_at: Mon, 13 Nov 2023 18:53:16.832159000 UTC +00:00,
updated_at: Mon, 13 Nov 2023 19:03:54.009211000 UTC +00:00,
genre: "Fantasy",
rating: "PG-13",
run_time: "121 minutes">,
#<Movie:0x00000001073744e0
id: 2,
title: "New Moon",
created_at: Mon, 13 Nov 2023 18:54:29.262512000 UTC +00:00,
updated_at: Mon, 13 Nov 2023 19:05:05.154025000 UTC +00:00,
genre: "Fantasy",
rating: "PG-13",
run_time: "130 minutes">,
#<Movie:0x0000000107373540
id: 3,
title: "Eclipse",
created_at: Mon, 13 Nov 2023 18:55:07.642104000 UTC +00:00,
updated_at: Mon, 13 Nov 2023 19:05:34.884290000 UTC +00:00,
genre: "Fantasy",
rating: "PG-13",
run_time: "124 minutes">,
#<Movie:0x0000000107372f00
id: 4,
title: "Breaking Dawn Pt.1",
created_at: Mon, 13 Nov 2023 18:55:29.690982000 UTC +00:00,
updated_at: Mon, 13 Nov 2023 19:06:17.415378000 UTC +00:00,
genre: "Fantasy",
rating: "PG-13",
run_time: "108 minutes">,
#<Movie:0x0000000107372e60
id: 5,
title: "Breaking Dawn Pt.2",
created_at: Mon, 13 Nov 2023 18:56:24.711537000 UTC +00:00,
updated_at: Mon, 13 Nov 2023 19:06:53.898542000 UTC +00:00,
genre: "Fantasy",
rating: "PG-13",
run_time: "115 minutes">]
