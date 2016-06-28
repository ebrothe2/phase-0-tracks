1. What are some common HTTP status codes?
  200 OK - request succeeded
  202 Accepted - accepted for processing but processing not completed
  204 - No content
  301 - Moved permanently
  401 - Unauthorized - requires user authentication
  402 - payment required
  403 - forbidden
  404 - Not Found - not found anything matching the request

2. Difference between a GET request and a POST request: when might each be used?
  - 2 most common methods
    GET - requests data from a specified source - name/value pairs sent in the URL of a get request, they remain in browser history, can be bookmarked, have length restrictions, should only be used to retrieve data, can be cached. GET is less secure than POST because data sent is part of URL. Data visible to everyone in URL
    POST - submits data to be processed to a specified resource - name/value pairs sent in the HTTP message body of request as opposed to the URL like a GET. POST requests never cached(unlike GET which can be), do not remain in browser history, cannot be bookmarked, no restrictions on data length. Data not displayed in URL

3. What is a cookie
    A small look up table containing pairs of key&data values. Data can be retrieved and used to customize a webpage appropriately.
    Not possible for webpage to view cookies from another site - privacy and security problem
    Typically made when new webpage is loaded
    Convenient way to carry information from one session to another
    By default - cookie destroyed when current browser window closed. Can be made to last an arbitrary length of time after that. This time can be set when cookie is made.
    Small text files that are given ID tags on browser directory (made up fo letters and numbers)
    Two types of cookies; session cookies & persistent cookies - sessions cookies created temporarily in browser subfolder while you are visiting a website. once you leave site cookie is deleted. Persistent cookie files remain in browser subfolder and are activated again once you visit the webstire that created that particular cookie. persistent cookie remains in the browsers subfolder for the duration of time set within the cookie file.
    Each cookie file typically contains
      - the name of the server the cookie was sent from
      - the lifetime of a cookie
      - a value - usually a randomly generated unique number. The website server that sent the cookie uses this number to recognize you when you return to a site or browse from page to page. Only the server that sent the cookie can read it and therefore use it.