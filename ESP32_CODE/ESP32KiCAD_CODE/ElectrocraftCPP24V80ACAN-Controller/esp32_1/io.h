// Define a struct to hold motor information

#ifndef IO_H
#define IO_H

// set pin numbers
const int IO5Pin = 33;

const int buttonPin = 27; 
const int ledPin1 =  12;   
const int ledPin2 =  14; 
const int ledPin3 =  2; 
  
// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 32;

int potValue = 0;
int buttonState = 0;

void init_io(){
    // initialize 
  pinMode(buttonPin, INPUT);
  // initialize the LED pin as an output
  pinMode(ledPin1, OUTPUT);
  // initialize the LED pin as an output
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);
    
  // Io5
  pinMode(IO5Pin, OUTPUT);
}

void output(MotorData& Motor1Data){
  if(Motor1Data.get_enable & Motor1Data.get_ready){
    digitalWrite(ledPin1, HIGH);
  }else{
    digitalWrite(ledPin1, LOW);
  }
}
#endif
