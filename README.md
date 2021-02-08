![BASIC Engine Microcomputer](https://github.com/JamesCWhite/BASIC_Engine_Software/blob/main/images/BE_micro.jpeg?raw=true)

# BASIC Engine Software
A collection of programs for the BASIC Engine Computer

http://basicengine.org

https://betest.freeflarum.com/


The BASIC Engine is a low-cost single-board home computer with advanced 2D color graphics and sound capabilities, roughly comparable to late-1980s or early-1990s computers and video game consoles. It is powered by an ESP8266 and has the same form factor as a Raspberry Pi. I hacked one into a Cherry Keyboard to complete the microcomputer asthetic and function.



# Procedural Snowflake Generator

![Procedural Snowflake Generator](https://github.com/JamesCWhite/BASIC_Engine_Software/blob/main/images/snowflake_screen.jpg?raw=true)

![Sample Snowflakes](https://github.com/JamesCWhite/BASIC_Engine_Software/blob/main/images/snowflake.gif?raw=true)

I wrote this little program to generate snowflake like patterns that I could plot on holiday postcards. It will draw a snowflake and ask if you want to save it as a gcode file. If you hit 'Y' it will write the gcode to a file in the same directory as the program and then ask if it should save a .pcx image of the snowflake as well. It names the corresponding files as X_snowflake.gcode & X_snowflake.pcx



# Image to Spiral Gcode

![BASIC Engine Logo](https://github.com/JamesCWhite/BASIC_Engine_Software/blob/main/images/BE_Logo.jpeg?raw=true)

The output of this program is shown above. It takes a one bit .PCX image file as input and outputs a .GCODE file that I can plot on my pen plotter. Example .PCX and the .GCODE file output based it are provided for reference.



# Snek Gaym

![Snek Gaym](https://github.com/JamesCWhite/BASIC_Engine_Software/blob/main/images/SNEK.PNG?raw=true)

This is the alpha release of the Snek Gaym! 1 or 2 player, player one uses direction keys and player two uses the WASD keys. You grow three segments for each slice of bread you eat, and the pace quickens slightly. This game is compatible with any SCREEN mode, but I do not reccomend SCREEN 7 (it's crazy small). My suggestion is a SCREEN mode that renders a square on screen as closely to a square as possible. The game uses PETSCII (FONT 2)... If you use another font as default, the game will change to FONT 2 and return the to your default upon exit.  I have some finishing touches to add including highscores, a intro screen, and a few other things. My personal highscore on single player is 54 =)



# Asteroids

![Asteroids](https://github.com/JamesCWhite/BASIC_Engine_Software/blob/main/images/SHIP.PNG?raw=true)

Here is my progress on re-creating the original arcade version of asteroids on the BASIC Engine. Currently I only have the ship movement / physics worked out in SHPIPHYSICS.BAS this includes ship rotation (left / right), thrust (up), drag, wraparound, and hyperspace (down). Everything else is yet to be implemented although I have asteroidgen.bas which generates random asteroids to use in game, they are not tied together yet. I also have the original asteroids font stored in vector format and am able to display text rendered in it, so it's coming along. Next up I need to add bullets, incorporate the asteroids, and then I need to tackle the object collision problem before moving on to the rest. Slowly but surely I'll get there. You can see the frames per second in the upper left, lower the SHIPTIME variable to increse the FPS. Currently it draws the ship once every 30ms and it takes about 3ms to draw, so it averages 30 FPS. It looks butter smooth at high FPS but I think I'll need that 30ms for the rest of the game's processing. If you tweak the SHIPTIME variable you should also play with ACCFACTOR and DRAGFACTOR which control how quickly the ship accelerates and slows down, respectively.
