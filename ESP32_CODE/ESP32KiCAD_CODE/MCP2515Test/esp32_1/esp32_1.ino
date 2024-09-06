#include <SPI.h>

#define CS_PIN 5  // Define your CS pin

void setup() {
  Serial.begin(115200);
  SPI.begin();  // Start SPI

  pinMode(CS_PIN, OUTPUT);
  digitalWrite(CS_PIN, HIGH);  // Set CS pin high (inactive)

  // MCP2515 Register Read Test (Read CANCTRL register)
  uint8_t result = readMCP2515Register(0x0F);  // CANCTRL Register Address (0x0F)

  Serial.print("CANCTRL Register: 0x");
  Serial.println(result, HEX);
}

void loop() {
  // Empty loop
}

// Function to read a register from MCP2515
uint8_t readMCP2515Register(uint8_t address) {
  digitalWrite(CS_PIN, LOW);  // Activate the slave by pulling CS low
  
  SPI.transfer(0x03);        // SPI instruction to read register (0x03)
  SPI.transfer(address);      // Address of the register to read
  
  uint8_t result = SPI.transfer(0x00);  // Read the result
  
  digitalWrite(CS_PIN, HIGH);  // Deactivate the slave by pulling CS high
  
  return result;
}
