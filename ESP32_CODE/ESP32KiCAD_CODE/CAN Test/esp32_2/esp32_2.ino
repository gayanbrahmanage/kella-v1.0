#include <SPI.h>
#include <mcp2515.h>

struct can_frame canMsg;
MCP2515 mcp2515(5);


void setup() {
Serial.begin(115200);
  delay(1000);

  // Initialize MCP2515 CAN Controller
  SPI.begin();  // Initialize SPI bus
  
  // Perform MCP2515 reset
  if (mcp2515.reset() != MCP2515::ERROR_OK) {
    Serial.println("MCP2515 Reset Error");
    while (1);  // Halt execution if the reset fails
  }
  
  // Set CAN bus speed (500kbps) and check for errors
  if (mcp2515.setBitrate(CAN_1000KBPS, MCP_8MHZ) != MCP2515::ERROR_OK) {
    Serial.println("MCP2515 Set Bitrate Error");
    while (1);  // Halt execution if the bitrate setting fails
  }
  
  // Set normal mode for CAN communication and check for errors
  if (mcp2515.setNormalMode() != MCP2515::ERROR_OK) {
    Serial.println("MCP2515 Set Normal Mode Error");
    while (1);  // Halt execution if setting normal mode fails
  }

  Serial.println("CAN bus initialized successfully");
  
  delay(1000);

  // Check for errors on the MCP2515
  if (mcp2515.checkError() == MCP2515::ERROR_OK) {
    Serial.println("No CAN errors");
  } else {
    Serial.println("Error: CAN bus issue detected");
  }
  
}

void loop() {
  if (mcp2515.readMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.print(canMsg.can_id, HEX); // print ID
    Serial.print(" "); 
    Serial.print(canMsg.can_dlc, HEX); // print DLC
    Serial.print(" ");
    
    for (int i = 0; i<canMsg.can_dlc; i++)  {  // print the data
      Serial.print(canMsg.data[i],HEX);
      Serial.print(" ");
    }

    Serial.println();      
  }
}
