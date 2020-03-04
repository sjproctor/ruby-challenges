# Challenge: Tasklist with TDD

# Copy the story into your rspec file as a comment.
# Then write the test(s) that class/method tests must pass.
# Then run the test(s) and see that they fail.
# Then implement the class/method, with comments, so that it passes the tests one at a time and you understand what you have created.

# connecting the testing file to rspec and the task 
require_relative 'task'
require 'rspec'

# creating a describe block for the class Task
describe "Task" do

  # Story: As a developer, I can create a Task.
  it "As a developer, I can create a Task." do
    # expecting a class to be created, wrapped in {} to reference the class
    expect{ Task.new }.to_not raise_error
  end

  # Story: As a developer, I can give a Task a title and retrieve it.
  it "As a developer, I can give a Task a title and retrieve it." do
    # creating a local variable that is an object (an instance of the class)
    my_task = Task.new
    # expecting the instance of task to have a method called title and the output of the method to be of class String, wrapped in () to reference the method
    expect(my_task.title).to be_a String
  end

  # Story: As a developer, I can give a Task a description and retrieve it.
  it "As a developer, I can give a Task a description and retrieve it." do
    # the variable my_task is local to the it/end block
    my_task = Task.new
    # expecting the instance of task to have a method called description and the output of the method to be of class String, wrapped in () to reference the method
    expect(my_task.description).to be_a String
  end

  # Story: As a developer, I can mark a Task done.
  it "As a developer, I can mark a Task done." do
    my_task = Task.new
    # expecting the status method to update the status from not done to done
    expect(my_task.status).to eq 'done'
  end

  # Story: As a developer, when I print a Task that is done, its status is shown.
  it "As a developer, when I print a Task that is done, its status is shown." do
    my_task = Task.new
    my_task.status
    # expecting a to_s method to return all the information about the task
    expect(my_task.to_s).to eq 'done'
  end

end

# Stretch

# creating a describe block for the class Tasklist
describe "Tasklist" do

  it "As a developer, I can create a Tasklist." do
    # expecting a class to be created, wrapped in {} to reference the class
    expect{ Tasklist.new }.to_not raise_error
  end

  # Story: As a developer, I can add all of my Tasks to a Tasklist.
  it "As a developer, I can add all of my Tasks to a Tasklist." do
    # creating local variables for instances of Task and Tasklist
    my_task = Task.new
    my_tasklist = Tasklist.new
    # expecting the tasklist method to return an array
    expect(my_tasklist.tasklist).to be_a Array
    # adding the variable task to the tasklist array
    my_tasklist.add_tasks my_task
    # expecting the tasklist array to have a task (not be an empty array)
    expect(my_tasklist.tasklist).not_to be_empty
  end

  # Story: As a developer with a Tasklist, I can get the completed items.
  it "As a developer with a Tasklist, I can get the completed items." do
    # creating local variables for instances of Task and Tasklist
    my_task = Task.new
    my_tasklist = Tasklist.new
    # marking the status of a task as done using the status method in Task
    my_task.status
    # adding the variables to the tasklist array
    my_tasklist.add_tasks my_task
    # expecting the completed_task method to have the task with the status 'done'
    expect(my_tasklist.completed_tasks).to include my_task
  end

  # Story: As a developer with a Tasklist, I can get the incomplete items.
  it "As a developer with a Tasklist, I can get the incomplete items." do
    # creating local variables for instances of Task and Tasklist
    my_task = Task.new
    my_tasklist = Tasklist.new
    # adding the variable task to the tasklist array
    my_tasklist.add_tasks my_task
    p my_tasklist.incompleted_tasks
    # expecting the incompleted_task method to have the task with the status 'in progress'
    expect(my_tasklist.incompleted_tasks).to include my_task
  end
end
# ## Epic: Due Date
#
# Story: As a developer, I can create a DueDateTask, which **is-a** Task that **has-a** due date.
# **Hint:**   Use the built-in Ruby Date class
#
# Story:	As a developer, I can print an item with a due date with labels and values.
# **Hint:**	When implementing `to_s`, use `super` to call `to_s` on the super class.
#
# Story:	As a developer, I can add items with due dates to my Tasklist.
# **Hint:** 	Consider keeping items with due dates separate from the other items.
#
# **Story:**	As a developer with a Tasklist, I can list all the not completed items that are due today.
#
# **Story:**	As a developer with a Tasklist, I can list all the not completed items in order of due date.
#
# **Story:**	As a developer with a Tasklist with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
#
# ## Epic: Anniversary
#
# **Story:**	As a developer, I can create a to do item for an anniversary (a yearly recurring event) .
# **Hint:**   An Anniversary has a month and a day.
# **Hint:**	An Anniversary is a special kind of DueDateTask where the due date changes depending on the current date (override the `due_date` method to return the next anniversary date).
#
# **Story:**	As a developer, I can print an item for an anniversary with field labels and values.
#
# **Story:**	As a developer with a Tasklist with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month.
#
# **Story:**	As a developer with a Tasklist with a collection of items with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month, then the items without due dates.
