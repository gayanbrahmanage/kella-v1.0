#include <SPI.h>
#include <mcp2515.h>
#include "message.h"

// Initialize MCP2515
MCP2515 mcp2515(5);

MotorData Motor1Data;

void setup() {

  configureCAN();

}

void loop() {

  byte CPP1=0x01;
  GET_Drive_Status(CPP1, Motor1Data);

  delay(1000);  // Wait 1 second before the next loop
}
