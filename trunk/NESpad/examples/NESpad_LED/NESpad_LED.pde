/* 
   this example from the NESpad Arduino library
   shows the buttons pressed on LEDs, including a
   few ways to check whether a button is pressed
   rahji@rahji.com
*/

#include <NESpad.h>

// put strobe/clock/data pin numbers here if necessary
// ie: NESpad nintendo = NESpad(4,5,6);
NESpad nintendo = NESpad(); // default pins: 2,3,4

byte state = 0;

void setup() {
  pinMode(5,  OUTPUT);
  pinMode(6,  OUTPUT);
  pinMode(7,  OUTPUT);
  pinMode(8,  OUTPUT);
  pinMode(9,  OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);    
}

void loop() {
  
  state = nintendo.buttons();

  digitalWrite(5,  state & NES_A );
  digitalWrite(6,  state & NES_B );
  digitalWrite(7,  state & NES_SELECT );
  digitalWrite(8,  state & NES_START );
  digitalWrite(9,  state & NES_UP );
  digitalWrite(10, state & NES_DOWN );
  digitalWrite(11, state & NES_LEFT );
  digitalWrite(12, state & NES_RIGHT );

  delay(1);

/*
  // a way to test if a button is pressed...
  if (state & NES_A)  digitalWrite(1, HIGH);

  // a way to test if a button is not pressed...
  if !(state & NES_A) ...

  // and a way to check for diagonal directions...
  if (state & (NES_UP | NES_LEFT))

*/

}
