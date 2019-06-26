# robotic-hoover

A ruby program that navigates an imaginary robotic hoover (much like a Roomba) through an equally imaginary room based on:

- Room dimensions as X and Y coordinates
- Locations of patches of dirt as X and Y coordinates
- An initial hoover position as X and Y coordinates
- Driving instructions as cardinal directions e.g. N and E mean "go north" and "go east" respectively.

### Aim

The goal of the program is to take the room dimensions, the locations of the dirt patches, the hoover location and the driving instructions as input and to then output the following:

- The final hoover position (X, Y)
- The number of patches of dirt the robot cleaned up

### How to run
This program runs in the terminal. Please clone the repository with the following command:

`git clone https://github.com/antwild/robotic-hoover.git`

and then run the program with 
```
cd robotic-hoover
ruby app.rb
```
You will then be prompted to enter a file name, that will contain the imaginary hoover and imaginary room details as above. An example has been provided for you with `input.txt` but feel free to create your own and try it out!

