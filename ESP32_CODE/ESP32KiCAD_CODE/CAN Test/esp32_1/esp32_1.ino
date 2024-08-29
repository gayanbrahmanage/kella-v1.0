#include <mcp2515.h>
#include <SPI.h>

struct can_frame canMsg;

MCP2515 mcp2515(5);

// set pin numbers

const int buttonPin = 27; 
const int ledPin1 =  12;   
const int ledPin2 =  14;   
// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 32;

int potValue = 0;
int buttonState = 0;

void setup() {

  SPI.begin(18, 19, 23, 5);  // Initialize SPI with SCK, MISO, MOSI, CS
  mcp2515.reset();
  mcp2515.setBitrate(CAN_500KBPS, MCP_8MHZ);  // Set CAN bus speed
  mcp2515.setNormalMode();
  
  canMsg.can_id  = 0x00;
  canMsg.can_dlc = 8;
  canMsg.data[0] = 0x8E;
  canMsg.data[1] = 0x87;
  canMsg.data[2] = 0x32;
  canMsg.data[3] = 0xFA;
  canMsg.data[4] = 0x26;
  canMsg.data[5] = 0x8E;
  canMsg.data[6] = 0xBE;
  canMsg.data[7] = 0x86;


  // initialize 
  pinMode(buttonPin, INPUT);
  // initialize the LED pin as an output
  pinMode(ledPin1, OUTPUT);
  // initialize the LED pin as an output
  pinMode(ledPin2, OUTPUT);

  Serial.begin(115200);
  delay(1000);
}

void loop() {

  mcp2515.sendMessage(&canMsg);
  Serial.println("Message sent CAN");
  
  // Reading potentiometer value
  potValue = analogRead(potPin);
  Serial.println(potValue);
  delay(500);
  
  buttonState = digitalRead(buttonPin);

  if (buttonState == HIGH) {
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin2, LOW);
  }else{
    digitalWrite(ledPin1, LOW);
    digitalWrite(ledPin2, HIGH);
  }

}
