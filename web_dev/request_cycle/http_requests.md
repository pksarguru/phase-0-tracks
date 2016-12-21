What are some common HTTP status codes?
200 is OK
403 Forbidden 
404 Not Found
What is the difference between a GET request and a POST request? When might each be used?

GET - Requests data from a specified resource

POST - Submits data to be processed to a specified resource

So essentially GET is used to retrieve remote data, and POST is used to insert/update remote data.

Some other notes on GET requests:

GET requests can be cached
GET requests remain in the browser history
GET requests can be bookmarked
GET requests should never be used when dealing with sensitive data
GET requests have length restrictions
GET requests should be used only to retrieve data

Some other notes on POST requests:

POST requests are never cached
POST requests do not remain in the browser history
POST requests cannot be bookmarked
POST requests have no restrictions on data length

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests? A cookie is a bit of data that gets put on your computer while you are browsing. This can be related to HTTP requests because it can store the state of your computer ie are you logged in. If you are the cookie will say it is okay for you to be passed some secure information that might otherwise throw a 403 error.