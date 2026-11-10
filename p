Open Visual Studio Code and create a new Flutter project.
Open the lib folder and select main.dart.
Import the Flutter Material package.
Create the main() function and run the application using runApp().
Create a MaterialApp and a Scaffold with an AppBar titled Traffic Signal Animation.
Create a StatefulWidget to manage the animation.
Declare a Boolean variable isGreen and initialize it to false.
Use AnimatedContainer to create a square signal box with an initial width and height of 150 pixels and red colour.
Set Duration(seconds: 1) to provide a smooth animation.
Add an ElevatedButton with the text Change Signal.
Use setState() to change the signal colour from red to green and its size from 150 to 200 pixels.
Use a Boolean toggle to switch between STOP and GO states.
Run the application using flutter run and verify the animation.
