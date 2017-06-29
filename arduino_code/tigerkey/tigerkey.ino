#include "DigiKeyboard.h"
int pb3 = 3;
int pb4 = 4;

void setup() {
  pinMode(pb3, INPUT);
  digitalWrite(pb3, HIGH); // set pull up circuit
  pinMode(pb4, OUTPUT);
  digitalWrite(pb4, HIGH);
  DigiKeyboard.sendKeyStroke(0);
}

void loop() {
  if (digitalRead(pb3) == LOW) {
    DigiKeyboard.println("Your Password Here");    
  }
}
