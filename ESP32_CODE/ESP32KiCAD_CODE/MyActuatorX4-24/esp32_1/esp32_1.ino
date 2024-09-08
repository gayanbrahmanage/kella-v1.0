#include <SPI.h>
#include <mcp2515.h>

struct can_frame canMsg1;

MCP2515 mcp2515(5);
uint16_t ID=0x01;
uint16_t ctemp, ctorque, cspeed, cpose;


// set pin numbers
const int buttonPin = 27; 
const int ledPin1 =  12;   
const int ledPin2 =  14;   
// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 32;
int potValue = 0;
int buttonState = 0;

//  values for sending a position control command
uint8_t mode = 0x01;            // Example mode
float targetPosition = 0.0;    // Example position in degrees (float32)
uint16_t targetSpeed = 200;    // Example speed (uint15)
uint16_t currentThreshold = 180;  // Example current threshold (uint12)
uint8_t returnStatus = 0;  

void setup() {

   // initialize 
  pinMode(buttonPin, INPUT);
  // initialize the LED pin as an output
  pinMode(ledPin1, OUTPUT);
  // initialize the LED pin as an output
  pinMode(ledPin2, OUTPUT);
  
  configureCAN();
  resetMotorCANID();
  setMotorCANID(ID, ID); // Set motor 1 CAN ID from 0x141 to 0x142
  MotorZeroSetting(ID);

   // Set ADC resolution (0-4095 for 12 bits)
  analogSetWidth(12);
  initializeFilter();

}

void loop() {

 digitalWrite(ledPin1, HIGH);
 
 potValue = analogRead(potPin);
 targetPosition=movingAverageFilter(potValue)-2048;
 targetPosition=targetPosition*180/2048;
 Serial.println(targetPosition);
 // Send position control command to CAN ID 0x141
 sendPositionControlCommand(ID, mode, targetPosition, targetSpeed, currentThreshold, returnStatus);

  

 
}
