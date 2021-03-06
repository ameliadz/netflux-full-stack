girls_trip = Movie.create({
    title: 'Girls Trip',
    year: 2017,
    genre: 'Comedy',
    director: 'Malcolm D. Lee',
    plot: "When four lifelong friends travel to New Orleans for the annual Essence Festival, sisterhoods are rekindled, wild sides are rediscovered, and there's enough dancing, drinking, brawling, and romancing to make the Big Easy blush.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjMwNTEzODUwMV5BMl5BanBnXkFtZTgwNjE5NjA5MjI@._V1_SX300.jpg'
  })

lotr = Movie.create({
    title: 'The Lord of the Rings: The Fellowship of the Ring',
    year: 2001,
    genre: 'Adventure',
    director: 'Peter Jackson',
    plot: 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
    image: 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SX300.jpg'
  })

  matrix = Movie.create({
    title: 'The Matrix',
    year: 1999,
    genre: 'Action',
    director: 'Lana Wachowski',
    plot: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
    image: 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'
  })

  man_of_steel = Movie.create({
    title: 'Man of Steel',
    year: 2013,
    genre: 'Action',
    director: 'Zack Snyder',
    plot: 'Clark Kent is an alien who as a child was evacuated from his dying world and came to Earth, living as a normal human. But when survivors of his alien home invade Earth, he must reveal himself to the world.',
    image: 'https://m.media-amazon.com/images/M/MV5BMTk5ODk1NDkxMF5BMl5BanBnXkFtZTcwNTA5OTY0OQ@@._V1_SX300.jpg'
  })

  call_me = Movie.create({
    title: 'Call Me By Your Name',
    year: 2017,
    genre: 'Drama',
    director: 'Luca Guadagnino',
    plot: "In 1980s Italy, a romance blossoms between a seventeen year-old student and the older man hired as his father's research assistant.",
    image:'https://m.media-amazon.com/images/M/MV5BNDk3NTEwNjc0MV5BMl5BanBnXkFtZTgwNzYxNTMwMzI@._V1_SX300.jpg'
  })

free = Subscription.create(tier: "free")
silver = Subscription.create(tier: "silver")
gold = Subscription.create(tier: "gold")

test_free = Customer.create(name: "Liberty Van Zandt", subscription: free)
test_silver = Customer.create(name: "Norrin Radd", subscription: silver)
test_gold = Customer.create(name: "Michael Phelps", subscription: gold)

free.movies.push(matrix)
silver.movies.push(free.movies, man_of_steel, girls_trip)
gold.movies.push(Movie.all)
