#include <RCSwitch.h>

// Pin connected to the 433MHz RF receiver data pin
const int IO5Pin = 33;

const int buttonPin = 27; 
const int ledPin1 =  12;   
const int ledPin2 =  14;   
// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 32;

int potValue = 0;
int buttonState = 0;

RCSwitch mySwitch = RCSwitch();  // Create an instance of RCSwitch

const int SW1=5330179;
const int SW2=5330188;
const int SW3=5330191;
const int SW4=5330224;
const int SW5=5330227;
const int SW6=5330236;
const int SW7=5330239;
const int SW8=5330368;
const int SW9=5330371;
const int SW10=5330380;
const int SW11=5330383;
const int SW12=5330416;

int receivedValue;

void setup() {

    // initialize 
  pinMode(buttonPin, INPUT);
  // initialize the LED pin as an output
  pinMode(ledPin1, OUTPUT);
  // initialize the LED pin as an output
  pinMode(ledPin2, OUTPUT);
  
  // Initialize Serial for monitoring
  Serial.begin(115200);
  
  // Confirm that setup is starting
  Serial.println("Setting up 433MHz RF Receiver...");
  
  // Set pin 33 as input and configure the RF receiver
  mySwitch.enableReceive(digitalPinToInterrupt(IO5Pin));  // Set pin 33 as the interrupt pin
  
  // Confirm that receiver setup is done
  Serial.println("433MHz RF Receiver Initialized on pin 33.");
}

void loop() {
  // Check if a signal has been received
  if (mySwitch.available()) {
    // Get the received value
    receivedValue = mySwitch.getReceivedValue();
    
    // If the received value is valid
    if (receivedValue != 0) {
      Serial.print("Received Code: ");
      Serial.println(receivedValue);
    } else {
      Serial.println("Unknown RF signal received.");
    }
    
    // Reset the receiver to be ready for the next signal
    mySwitch.resetAvailable();
  } else {
    // Print this periodically to ensure the loop is running
  }

  if(receivedValue==SW1){
    digitalWrite(ledPin1, HIGH);
  }else{
    digitalWrite(ledPin1, LOW);
  }
}
