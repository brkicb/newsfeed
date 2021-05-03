# News Feed

This is a project that helps beginners get started with Dart and Flutter by building a simple News Feed application. This
project is unique in that it shows you can you can make HTTP requests to a Django backend server that's running locally
on your machine. This can be helpful to those who want to know how to develop a backend server and can have everything
running on their local machine instead of using services like firebase in order to develop a mobile application.

In order to test out this project, follow these steps:

-   clone the repository
-   clone the simple server which can be found under https://github.com/linkedweb/simple-server
-   setup either an android or ios emulator on your local machine
-   if using android, set the primary domain in the HTTP requests in lib &#8594; src &#8594; app.dart, and in lib &#8594; src &#8594; widgets &#8594; posts.dart to the following: http://10.0.2.2:8000
-   if using ios, set the primary domain in the HTTP requests in lib &#8594; src &#8594; app.dart, and in lib &#8594; src &#8594; widgets &#8594; posts.dart to the following: http://localhost:8000
-   navigate into the newsfeed project folder you cloned and run the following to install packages: flutter pub get
-   run the mobile app with the following command: flutter run
-   navigate into your simple-server and run it, you can follow the steps shown in that repository in order to run it on your local machine
