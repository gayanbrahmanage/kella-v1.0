#include <SPI.h>
#include <mcp2515.h>

struct can_frame canMsg1;

MCP2515 mcp2515(5);
uint16_t ID=0x141;
uint16_t ctemp, ctorque, cspeed, cpose;


// set pin numbers
const int buttonPin = 27; 
const int ledPin1 =  12;   
const int ledPin2 =  14;   
// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 32;
int potValue = 0;
int buttonState = 0;


void setup() {
   // initialize 
  pinMode(buttonPin, INPUT);
  // initialize the LED pin as an output
  pinMode(ledPin1, OUTPUT);
  // initialize the LED pin as an output
  pinMode(ledPin2, OUTPUT);
  
  configureCAN();
  setMotorCANID(ID, ID); // Set motor 1 CAN ID from 0x141 to 0x142
  readMotorCANID(ID);

  //set_absolute_pose(ID, 200,500);
}

void loop() {

 digitalWrite(ledPin1, HIGH);
 
 read_temp_speed_pose(ID, ctemp, ctorque, cspeed, cpose);
 
 potValue = analogRead(potPin);
 potValue = movingAverageFilter(potValue)*8;
 Serial.println(potValue);
 set_absolute_pose(ID, 200,potValue);
 delay(500);
  
 //Serial.print("pose: ");
 //Serial.println(cpose);
 
}
