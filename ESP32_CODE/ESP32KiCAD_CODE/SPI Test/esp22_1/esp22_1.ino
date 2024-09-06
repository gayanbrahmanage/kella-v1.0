#include <SPI.h>

#define CS_PIN 5  // Chip Select (Slave Select) pin

void setup() {
  // Start the serial monitor for debugging output
  Serial.begin(115200);

  // Initialize the SPI bus
  SPI.begin();  // SCK, MOSI, and MISO are hardware-specific

  // Initialize the Chip Select (CS) pin
  pinMode(CS_PIN, OUTPUT);
  digitalWrite(CS_PIN, HIGH);  // Set CS pin high (inactive)

  Serial.println("Starting SPI test...");
  
  // Perform the SPI test
  spiTest();
}

void spiTest() {
  // Activate the slave by pulling CS low
  digitalWrite(CS_PIN, LOW);
  
  // Send data over the SPI bus (e.g., send 0x55 and 0xAA)
  uint8_t dataToSend = 0x55;
  uint8_t receivedData = SPI.transfer(dataToSend);  // Send and receive data simultaneously
  
  // Deactivate the slave by pulling CS high
  digitalWrite(CS_PIN, HIGH);
  
  // Print the results to the serial monitor
  Serial.print("Sent: 0x");
  Serial.print(dataToSend, HEX);
  Serial.print(", Received: 0x");
  Serial.println(receivedData, HEX);
}

void loop() {
  // Loop delay
  delay(2000);
  
  // Repeat the SPI test every 2 seconds
  spiTest();
}
