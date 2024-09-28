#include <SPI.h>
#include <mcp2515.h>

// Initialize MCP2515
MCP2515 mcp2515(5);

void setup() {

  configureCAN();

}

void loop() {

  byte CPP=0x01;
  byte ad0=0x200E;
  byte ad1=0x00;
  
  send_GET_command(CPP, ad0,ad1 );

  delay(1000);  // Wait 1 second before the next loop
}
