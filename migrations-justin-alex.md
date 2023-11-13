As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.


As a developer, I can add a category to the Movie model called category that is a string.

    add_column :movies, :category, :string

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

As a developer, I can add a category to the Movie model called rating that is a string.

    add_column :movies, :rating, :string

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "rating"
  end

As a developer, I can add a category to the Movie model called run_time that is a number.

    add_column :movies, :run_time, :integer 

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "rating"
    t.integer "run_time"
  end

As a developer, I can add five entries to the database via the Rails console.

Movie.create( title: "Alex the Movie", category: "Documentary", rating: "PG-13", run_time: 100)

[#<Movie:0x000000010f36e880
  id: 1,
  title: "Alex the Movie",
  created_at: Mon, 13 Nov 2023 19:14:49.471611000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:14:49.471611000 UTC +00:00,
  category: "Documentary",
  rating: "PG-13",
  run_time: 100>,
 #<Movie:0x000000010f36e740
  id: 2,
  title: "Justin the Movie",
  created_at: Mon, 13 Nov 2023 19:17:02.602035000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:17:02.602035000 UTC +00:00,
  category: "Documentary",
  rating: "Adult",
  run_time: 100>,
 #<Movie:0x000000010f36e600
  id: 3,
  title: "How to Code",
  created_at: Mon, 13 Nov 2023 19:18:00.189653000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:18:00.189653000 UTC +00:00,
  category: "Boring",
  rating: "PG",
  run_time: 10000>,
 #<Movie:0x000000010f36e4c0
  id: 4,
  title: "Tech Conference",
  created_at: Mon, 13 Nov 2023 19:18:58.976591000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:18:58.976591000 UTC +00:00,
  category: "Instructional",
  rating: "PG",
  run_time: 60>,
 #<Movie:0x000000010f36e380
  id: 5,
  title: "The Secrets of CSS",
  created_at: Mon, 13 Nov 2023 19:20:33.008278000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:20:33.008278000 UTC +00:00,
  category: "Instructional",
  rating: "PG",
  run_time: 80>] 

As a developer, I can update the run_time column to be a string.

    change_column :movies, :run_time, :string

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "rating"
    t.string "run_time"
  end

As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')

movie = Movie.find(1)
movie.update(run_time: "100 minutes")

[#<Movie:0x000000010c61c440
  id: 1,
  title: "Alex the Movie",
  created_at: Mon, 13 Nov 2023 19:14:49.471611000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:38:06.158737000 UTC +00:00,
  category: "Documentary",
  rating: "PG-13",
  run_time: "100 minutes">,
 #<Movie:0x000000010c61c300
  id: 2,
  title: "Justin the Movie",
  created_at: Mon, 13 Nov 2023 19:17:02.602035000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:38:50.287760000 UTC +00:00,
  category: "Documentary",
  rating: "Adult",
  run_time: "100 minutes">,
 #<Movie:0x000000010c61c1c0
  id: 3,
  title: "How to Code",
  created_at: Mon, 13 Nov 2023 19:18:00.189653000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:39:24.720365000 UTC +00:00,
  category: "Boring",
  rating: "PG",
  run_time: "10000 minutes">,
 #<Movie:0x000000010c61c080
  id: 4,
  title: "Tech Conference",
  created_at: Mon, 13 Nov 2023 19:18:58.976591000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:40:12.981708000 UTC +00:00,
  category: "Instructional",
  rating: "PG",
  run_time: "60 minutes">,
 #<Movie:0x000000010c61bf40
  id: 5,
  title: "The Secrets of CSS",
  created_at: Mon, 13 Nov 2023 19:20:33.008278000 UTC +00:00,
  updated_at: Mon, 13 Nov 2023 19:40:23.235749000 UTC +00:00,
  category: "Instructional",
  rating: "PG",
  run_time: "80 minutes">] 

As a developer, I can rename the column category to be named genre.

    rename_column :movies, :category, :genre

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
    t.string "rating"
    t.string "run_time"
  end