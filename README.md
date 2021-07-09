# NESpad & SNESpad

These are Arduino Libraries for interfacing with Nintendo Game Pads. If you are using a Super Nintendo game pad, replace `nes` with `snes` everywhere below.

## Installation

1. Copy the `NESpad` folder into your `Arduino/hardware/libraries` folder.
2. Restart the Arduino IDE

## Usage

To use this library in a sketch, go to the `Sketch | Import Library` menu and
select NESpad. This will add a corresponding include line to the top of your sketch.

## Making Changes to the Library

After a successful build of this library, a new file named `NESpad.o` will appear
in `Arduino/hardware/libraries/NESpad`. This file is the built/compiled library
code.

If you choose to modify the the code for this library in the .cpp or .h files,
then you must first _unbuild_ the library by deleting its .o file. The
new .o with your code will appear after the next press of "verify"

## Hardware

### NES Joystick connector pinout

```
                  (1) GND    <- Brown
White -> +5V (5)  (2) CLOCK  <- Red
          NC (6)  (3) STROBE <- Orange
          NC (7)  (4) DATA   <- Yellow
```

### SNES Joystick connector pinout

```
 (1) +5V
 (2) CLOCK
 (3) STROBE
 (4) DATA
 (5) NC
 (6) NC
 (7) GND
```
