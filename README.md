# Task List
Let's build a Task List in Rails! We will solve the problem of tracking tasks in a web application. This project will enable us to keep track of and persist, add, edit and remove tasks. This is an individual Stage 1 project.

## Learning Goals
Practice all aspects of Rails development.
- Create a new Rails application
- Explore each aspect of the Rails Request Cycle: Model, View, Controller
- Implement RESTful routes using Rails standards
- Complete all CRUD actions in a Rails application

**Project Due Monday Sept 24th**

## Baseline
In this baseline, you'll create a new Rails application and get started with two of the major components: route, controller and view.

- Fork and clone this repository to your computer
- Create a new Rails application using `rails new .`
  - create a `Tasks` controller
  - create a route to view the task `index` page
  - create a controller action for the task `index` page which contains an array of hard-coded tasks
  - create an ERB view to display the tasks from the controller action

## Wave 1
This wave is where we introduce ActiveRecord to create a model. We use the model to persist our data.

1. create a migration which will create a new `Task` model
    - create the database schema and tables by running the `rails db:migrate` command
    - the `Task` model should include _at least_ a name, a description and a completion date
    - create at least 2 `Task` model instances using the `rails console`
1. update the controller's `index` action you created to retrieve and show `all` Task objects from the database
    - you may need to update the view as well to use the model fields rather than the hard-coded data

## Wave 2
In this wave, we will expand the actions we support and introduce forms for user interactivity and persistence.

1. add support to `show` each task
    - update the task list to link to a `show` action for each individual task
    - create a route
    - create a controller action
    - create an ERB view
1. Create a new task:
    - update the task list to have a link to add a new task
      - this will give the user a new page with a **form** with the appropriate task fields
      - the site should take the user back to the task list after the new task is added

## Wave 3
In this wave we will extend the interactivity with users, allowing them to edit existing tasks.

1. Edit a task
    - update each task's show page to include an edit link
      - this will give the user a new page with a **form** that is pre-populated with the data about that task
      - the site should take the user back to the task's show page after the task is updated

1. **Optional**
  - DRY up your code by reusing the view code from the `new` functionality
    - Hint: Rendering _partials_ in Rails

## Wave 4
In this wave, we will add the ability to delete tasks. We will also add the ability for a user to mark a task complete. Note: Marking a task complete will require going above and beyond the examples provided in lecture.

1. Delete a task  
    On the task list, add a button or link for each task that will, once clicked:
    1. Ask the user to confirm that they definitely want to delete the task.
    1. Delete the task from the database and redirect the user back to the list of remaining tasks
1. Mark a task complete
    - Add a button to the list of tasks on the home page that, when clicked, will mark a task complete
    - Update the database with the task's completed date

### Optional Design
The focus of this project is to familiarize yourself with rails. Design of this application is optional and secondary to learning goals this project. If you do find you have time to style the design of your application, you can use or own design or the wireframes below.

![Homepage Wireframe](/imgs/tasklist_homepage.jpg "Homepage Wireframe")

## What we are looking for
Your instructor feedback template can be found [here](feedback.md)
