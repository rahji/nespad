# NESpad/SNESpad: Nintendo Joystick/Game Pad Libraries for Arduino #

I wrote this library, called NESpad, for anyone who wants to interface an NES game pad with the Arduino microcontroller. I also made an SNES library (SNESpad), but I haven’t tested it with an actual SNES joystick since I don't own one. Pascal Hahn suggested that I put the library on Google Code, so I've moved it from its old home at http://rahji.com/nespad

## Background ##

In [a post on my blog](http://www.rahji.com/wordpress/2007/09/19/joysticks/), I wrote some stuff about analog and digital joysticks. Over there, I mentioned that most digital joysticks are pretty easy to interface with a microcontroller, but the Nintendo (Famicom in Japan) joysticks add a little bit of complexity. Instead of each pin in the connector mapping to a separate button, the NES and SNES game pads send the state of all of the buttons (that includes Up Down Left Right) serially using its own simple protocol. This library lets you ignore that extra layer and makes it easy to use the original NES/SNES game pads, knockoffs, NES Advantage, Super Advantage, etc.

One use of this is to allow your Arduino access to the status of 8 buttons (up, down, left, right, A, B, START, SELECT) using only 3 digital pins (for STROBE/LATCH, CLOCK, DATA). 3 is better than the 8 you’d normally use, right? If you’re interested in connecting multiple game pads, let me know and I’ll change the library to allow this. Right now it only allows you to use one.

Some other cool possibilities include an accessory that I found at a flea market, called the Freedom Stick, that uses RF to make any NES joystick wireless. I haven’t tried it yet, but it should work perfectly with this library. Other NES/SNES joysticks have “Turbo” buttons that allow the A and B buttons to rapid-fire when they’re held down. The Advantage and Super Advantage allow you to control the turbo speed, too. Also found on those two controllers is a “Slow” button, which basically strobes the Start button continuously - originally designed to make some games appear to move in slow-motion. All of these things can mean lots of potential for interesting interactions - especially once you hide the fact that it’s a Nintendo joystick.

## Installation ##

To install the library, you just unarchive the NESpad zip file and put the resulting NESpad folder into **lib/targets/libraries/** (in your Arduino folder)

For more information, you can see the readme.txt file in the NESpad directory. The SNESpad library is installed in the same way. Like I said, though, I haven’t been able to try it with a proper SNES game pad. It should work fine.

## Usage ##

To use the library, just go to “Import Library” under the “Sketch” menu. Choose NESpad or SNESpad and it’ll insert the appropriate include line at the top of your sketch. If you decide that this sketch doesn’t need the library anymore, just delete that line.

There are examples sketches. Go to the “File | Sketchbook | Examples | NESpad” menu. One turns on a separate LED for each button or joystick direction. The other continuously dumps the status of all of the buttons to the serial port, which you can view in the Arduino serial monitor.

Look at the LED example to see how to create a NESpad object, get the state of the joystick using buttons(), and a few ways to check for buttons being pressed.

Here’s [a quick test of the library](http://www.rahji.com/wordpress/2007/09/21/nes-midi/) that I created - a MIDI controller using an NES Advantage controller as the input device.

## Hardware ##

The NES library used to have default settings for the pins as shown below.  That seemed to be causing trouble for people, so now you _must_ specify the pin numbers for strobe/clock/data (in that order) when you create your NESpad object (see the examples).

| NES pin | Arduino Pin |
|:--------|:------------|
| STROBE/LATCH | Digital 2 |
| CLOCK | Digital 3 |
| DATA | Digital 4 |
| +5V | +5V |
| GND | GND |


For SNESpad, the table above is still correct, but the pinout on the game pad’s connector is a little different.  Here are the pinouts for each:

| ![http://nespad.googlecode.com/files/nes_pinout.png](http://nespad.googlecode.com/files/nes_pinout.png) | ![http://nespad.googlecode.com/files/snes_pinout.png](http://nespad.googlecode.com/files/snes_pinout.png) |
|:--------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------|