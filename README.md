#README

An API for a game library tracking client.  

-   Deployed app: [Backlog](https://lcurran.github.io/backlog-client/) (log in with username: demo, password: backlog)

-   Deployed server: [Heroku](https://lcurran-backlog-api.herokuapp.com/)

-   [Client repo](https://github.com/lcurran/backlog-client/settings)

-   Uses the [IGDB API](https://www.igdb.com/).


Backlog is a web application that allows a user to keep track of the video games they own.  The front end client is a single page application built in Ember.js.  The client has search functionality that allows the user to search a massive database of video games, provided by the IGDB database, via my API.

The API is built in Ruby on Rails with a SQL server.  I used the [Unirest.io](http://unirest.io/ruby.html) gem to add an HTTP request to the third party, IGDB API.  The HTTP request is wrapped in a model, with a custom method that cleans and formats the data returned by IGDB.  

The catalog controller handles any requests from the client that required customization beyond the standard Rails conventions.  

The index method handles the search functionality, and triggers a request to the IGDB API by initializing a new instance of the Connection_IGDB class, which contains the HTTP request, and calling the custom method that processes the returned data.

The create method handles user requests to add a game found via search to their personal library. When a user adds a game from search, the game record is first created in the Backlog API, and then the reference is added to the Library table, which joins the user records to the game records.  I require the game name to be unique, to prevent the creation of duplicate data in my database. To deal with the creation of new game records,  I included a conditional that checks if the new game instance is valid.  If it is, I send back the new record of the game in my database. If the new game instance is invalid, I know it must already exist in my database, so I locate the existing game record and send it back to the client.
