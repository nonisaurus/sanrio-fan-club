# Sanrio Fan Club

An application for Sanrio fans.

<br>


## User stories
As a user I should be able to
- sign up for an account
- log into my account
- sign out of my account
- edit my account profile
- add new characters of my liking
- view all my characters I added
- edit these characters
- delete these characters
- view chat
- leave comment in chat
- delete my comment from chat

<br>

## Wireframe and Entity Relationship Diagram
![](/app/assets/images/wirefram.sanrio.fan.club.png)
![](/app/assets/images/erd.sanrio.fanclub.png)

<br>

## Technology used
- Ruby 3.2.1 programming language
- Rails 7.0.4 web application framework
- PostgreSQL database management system
- Puma as the web server
- Jbuilder for building JSON APIs
- Devise for user authentication
- Bootsnap for faster application boot times
- VSCode for code editing
- Heroku for deployment 
- SmartDraw and Balsamiq Wirefrmes for wireframe


<br>



## Project review

<br>

### Day 1
***
On day one, I invested my time and energy into the planning phase of my project, with a primary focus on establishing realistic timelines and expectations. Initially, I attempted to develop my project using Ruby on Rails as the backend and React as the frontend. However, I encountered significant challenges during the process, which ultimately proved to be too difficult to overcome. As a result, I decided to start over on day two. I dedicated the remainder of the day to carefully planning and strategizing, in order to ensure the success of my project. Although I had intended to incorporate a third model into the project, time constraints prevented me from completing it.


### Day 2
***
I began my project with a clear plan in mind and proceeded to establish the Ruby on Rails framework as the foundation. Next, I tackled the authorization component, which proved to be relatively straightforward due to the well-documented nature of the process. Utilizing Devise provided an excellent starting point for my project, and I was impressed by the abundance of built-in features. The next phase involved the establishment of the correct relationships between my models, which I determined would be best accomplished through a one-to-many approach. After completing my models, I proceeded to create the necessary controllers, a process that required a significant amount of time. Finally, I worked on the implementation of routes, which was a gratifying experience as I was able to witness prompt results on the screen. However, I encountered some challenges in ensuring that everything was correctly linked, which presented a slight issue later on.


### Day 3
***
On day three, I made significant progress in enhancing the user experience of my website. I began by creating a navigation bar, which I complemented with the implementation of Bootstrap to ensure the website's responsiveness. The majority of my time was devoted to perfecting the site's visual appeal and ensuring it accurately reflected my intentions for the project's final review in the General Assembly Software Engineering Immersive course. While undertaking these tasks, I encountered a few issues that required resolution. The issues were ultimately resolved on day four.

For example: During the development of my project, a situation arose in which creating a new user was intended to generate a specific set of five character cards. However, the application instead added an additional five cards to the entire database, resulting in unintended consequences. Specifically, I had intended each user to begin with five "protected" or undeletable cards. Nonetheless, the issue was identified and resolved on day four of my project.

I had to generate the below:
```
rails g devise:controllers registrations
```

Changed routes
```
 devise_for :users, controllers: {
    registrations: 'registrations/registrations'
  }
```

Changed registrations_controller.rb
```
def create
  super
  resource.save!
  resource.character_cards.create(name: "Hello Kitty",  ...)
end
```

### Day 4
***
On the final day of the project, I focused on the crucial tasks of debugging and perfecting the CSS styling. Once the debugging was complete, the next priority was deploying the application to ensure it was available to users although I did not get around to this.

<br>

## Key Learning
I am slow. But that is okay. :)

Also I need to avoid spending too much time on a single issue as this can hold back productivity and progress espcially in an environment where an experienced teacher is readily available to provide quick and effective solutions.


<br>

## Future Improvements 
While I am happy with how my project turned out, I do think there's room for improvement. Specifically, I would like to explore the potential addition of advanced features such as a picture upload feature or a live chatbox. Realistically, I think it would be best to work on those in a personal project after the course is finished.

<br>

## Bugs

None known.
