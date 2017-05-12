#include "DigiKeyboard.h"
int pb2 = 2;
int pb4 = 4;

void setup() {
  pinMode(pb2, INPUT);
  digitalWrite(pb2, HIGH); // set pull up circuit
  pinMode(pb4, OUTPUT);
  digitalWrite(pb4, HIGH);
}

void loop() {
  if (digitalRead(pb2) == LOW) {
    DigiKeyboard.println("Your Password Here");    
  }
}
