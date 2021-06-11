# Rails Students App 

## Setup

To download the dependencies for backend, run:

```sh
bundle install
```

There is some starter code in the `db/seeds.rb` file so that once you've
generated the models, you'll be able to create data to test your application.

You can run your Rails API on [`localhost:3000`](http://localhost:3000) by running:

```sh
rails s
```
Check your progress by: Running the Rails server and using Postman make requests

# Deliverables:

* The ability to create, read, update and delete **Instructor**
* Instructor will have a name
* The ability to create, read, update and delete **Student**
* Student will have name, major and age
* The ability to select one instructor for a student (an instructor can have any number of students). When you create a new student or update an existing user.
* Make sure instructor and student is not created without the names.
* Make sure student's age is greater than 18 years.

# Instructions:
* Fork this repository
* Time yourself while working on the deliverables
* Prioritize associations (being able to select an instructor for a student)
* Commit when you hit 75 minutes
* When you have finished all deliverables, commit again.