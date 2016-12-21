Release 0: 

    2. Common HTTP status codes are listed here: http://www.restapitutorial.com/httpstatuscodes.html
        The most common status codes are: 
            200 - OK
            201 - Created - similar to 200 but results in the creation of a new resource
            204 - No Content - the server returned the request but there wasn't any content
            304 - Not Modified - If the client has performed a conditional GET, access is allowed, and the document has not been modified. 
            400 - Bad Request - the request wasn't understood by the server
            401 - Unauthorized - request requires authentication 
            403 - Forbidden - request is understood and doesn't require authentication but the server refuses to fill it
            404 - Not Found
            409 - Conflict - indicates a conflict would be created if the request was fulfilled. most common with PUT requests
            500 - Internal Server Error - unexpected server condition prevented fulfillment of the request

    3. GET - requests data from a server, like accessing a website
       POST - submits data to be processed, like filling out a form

    4. A cookie is a small text file created to log state.  For instance a cookie can be created by a website when a user logs in.  This allows the user to navigate different pages while the cookie verifies that the user is logged in.  The first problem cookies solved was being able to maintain an online shopping cart while navigating different pages.  The cookie basically performs an HTTP request. 





