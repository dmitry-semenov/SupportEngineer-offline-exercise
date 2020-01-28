# Support Engineer offline exercise

Hello!

Thank you for applying to our support engineering team. We'd like to get to know you and your skills better, so we have a two-part exercise. This exercise should take you 2-4 hours but at the end we'll have a better understanding of you, your knowledge, and your ability to research.

> Please read this entire README before starting (don't worry, it will only take 5 minutes).

## Table of Contents

This is how the exercise is structured with an indication of how much of the total time you should spend on each part.

- [Part 1 - core values (20%)](#1-core-values)
- [Part 2 - sql hunt (80%)](#2-the-sql-hunt)

### 1. Core Values

Take a look at SalesLoft's core values https://salesloft.com/company/ and then write a short paragraph for each of them, detailing out a specific event in your life where you've demonstrated that core value. We're looking for both great examples and good communication skills as you tell us about them.  

- Bias Toward Action
- Glass Half Full
- Team Over Self
- Put Customers First
- Focused on Results

### 2. The SQL Hunt!

As a support engineer, you'll need to effectively navigate a SQL database, specifically PostgreSQL. In this exercise, you will have to fetch data according to the instructions.

We are providing the application in a Docker container to prevent any configuring issue and, we are able to guarantee a smooth experience for both: Unix and Windows systems.

1. Download and install Docker from https://docs.docker.com/install/ for your OS
2. Start Docker in your system (you should see the whale icon somewhere on your screen)
3. Clone this repo `git clone git@github.com:dmitry-semenov/SupportEngineer-offline-excercise.git`
4. `cd` into `SupportEngineer-offline-excercise`
5. Type `./docker_exec.sh`, this command will setup the rails app, and prepare the database. `psql -h db -p 5432 -U postgres`

You can choose to run your queries from Rails Console using `rails c` or from the Postgres console with the following command `bundle exec rails dbconsole`

Alternatively, you can import our database in another application of your choice. Running the command `rake db:dump format=sql` will create a .sql file to import. Actually, we had to run this ourselves to help windows people who struggled with Docker to get the task done, so please feel free to get the file from the repository, here's the location - `db/backups/development/20200128105224_sqlhunt_development.sql`.

We would like to see the queries along with the answers for the following questions:

1. Find the country with the highest number of engineers.
2. Find the three teams with the highest number of engineers and order them by the number of bugs, largest first.
3. Find the oldest engineer with a repository written using functional programming. If needed, the winner is the one with the most functional programming repositories.
4. Find the second least represented region across all the teams.
5. Find who published the book with the highest average rating.
6. Find the capital of the country where the oldest person in the team that shipped the most features comes from.
7. Find the inventor of the third most used programming language by the teams on the most populated floor.
8. Find the book least read by the the engineers who develop in Ruby.

Here you can find helpful documentations: [ActiveRecords queries](https://guides.rubyonrails.org/active_record_querying.html) [Postgresql](http://www.postgresqltutorial.com/postgresql-cheat-sheet/) 

Remember, what you learn during these exercises is more important than what you knew before starting!

## We're accepting responses via [this form](https://forms.gle/mRRtB6KJ3jqe4oDC9)

If you have any questions, email us at salesloft.exercise@dev-pro.net.

Good Luck!

The SalesLoft Team
