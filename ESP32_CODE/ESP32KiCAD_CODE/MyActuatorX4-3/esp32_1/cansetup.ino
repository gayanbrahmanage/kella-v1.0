void configureCAN(){

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

void setMotorCANID(uint16_t currentID, uint16_t newID) {
  struct can_frame canMsg;
  
  // Command to set CAN ID (0x79)
  canMsg.can_id  = currentID;    // Current CAN ID (e.g., motor 1: 0x141)
  canMsg.can_dlc = 8;            // Data length (8 bytes)
  canMsg.data[0] = 0x79;         // Command to set CAN ID
  canMsg.data[1] = 0x00;
  canMsg.data[2] = 0x00;
  canMsg.data[3] = 0x00;
  canMsg.data[4] = 0x00;
  canMsg.data[5] = 0x00;
  canMsg.data[6] = 0x00;
  canMsg.data[7] = newID & 0xFF;

  // Send CAN message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.print("Sent CAN ID set command from 0x");
    Serial.print(currentID, HEX);
    Serial.print(" to 0x");
    Serial.println(newID, HEX);
  } else {
    Serial.println("Error sending CAN message to set CAN ID");
  }

  // Delay to ensure the command is processed
  delay(10);

  // You may want to confirm the change by reading the motor parameters
  // (though the motor will reboot to apply the change)
}

// Function to read CAN ID
void readMotorCANID(uint16_t currentID) {
  struct can_frame canMsg;
  
  // Command to read CAN ID
  canMsg.can_id  = currentID;    // Current CAN ID to request from
  canMsg.can_dlc = 8;            // Data length
  canMsg.data[0] = 0x79;         // Command to read motor status (general query)
  canMsg.data[1] = 0x00;
  canMsg.data[2] = 0x01;
  canMsg.data[3] = 0x00;
  canMsg.data[4] = 0x00;
  canMsg.data[5] = 0x00;
  canMsg.data[6] = 0x00;
  canMsg.data[7] = 0x00;

  // Send the CAN message to request ID
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.print("Sent CAN ID read request to 0x");
    Serial.println(currentID, HEX);
  } else {
    Serial.println("Error sending CAN message to read CAN ID");
  }

  // Delay to allow the motor to reply
  delay(10);

  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.print("Received CAN message with ID: 0x");
    Serial.println(canMsg.can_id, HEX);
    
    // Print received data (assuming it includes CAN ID info)
    Serial.print("CAN ID Response Data: ");
    for (int i = 0; i < canMsg.can_dlc; i++) {
      Serial.print(canMsg.data[i], HEX);
      Serial.print(" ");
    }
    Serial.println();

    // Check if the response data includes a CAN ID
    // Typically, the CAN ID will be part of the response. You might need to parse it accordingly.
    uint8_t receivedID = canMsg.data[0]; // For example, CAN ID might be stored in the first byte
    Serial.print("Read CAN ID: 0x");
    Serial.println(receivedID, HEX);
  } else {
    Serial.println("No CAN message received");
  }
}
