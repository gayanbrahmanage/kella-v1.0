// Helper function to convert float to 4 bytes
void floatToBytes(float value, uint8_t* bytes) {
  union {
    float floatVal;
    uint8_t byteArray[4];
  } floatUnion;
  
  floatUnion.floatVal = value;
  for (int i = 0; i < 4; i++) {
    bytes[i] = floatUnion.byteArray[i];
  }
}

// Helper function to convert 4 bytes to float
float bytesToFloat(uint8_t* bytes) {
  union {
    float floatVal;
    uint8_t byteArray[4];
  } floatUnion;
  
  for (int i = 0; i < 4; i++) {
    floatUnion.byteArray[i] = bytes[i];
  }
  return floatUnion.floatVal;
}

// Function to send position control command
void sendPositionControlCommand(uint16_t canID, uint8_t mode, float position, uint16_t speed, uint16_t currentThreshold, uint8_t returnStatus) {

    struct can_frame canMsg;
    canMsg.can_id  = canID;  // CAN ID (e.g., 0x204 + motorID)
    canMsg.can_dlc = 8;      // Message length (8 bytes)

    // Clear the CAN message data
    memset(canMsg.data, 0, sizeof(canMsg.data));

    // Convert float position to 32-bit integer representation
    uint32_t positionInt = *(reinterpret_cast<uint32_t*>(&position));

    // Byte 0: Motor mode (3 bits) + 5 MSBs of position
    canMsg.data[0] = ((mode & 0x07) << 5) | ((positionInt >> 27) & 0x1F);

    // Byte 1: Next 8 bits of position
    canMsg.data[1] = (positionInt >> 19) & 0xFF;

    // Byte 2: Next 8 bits of position
    canMsg.data[2] = (positionInt >> 11) & 0xFF;

    // Byte 3: Next 8 bits of position
    canMsg.data[3] = (positionInt >> 3) & 0xFF;

    // Byte 4: Remaining 3 bits of position + 5 MSBs of speed
    canMsg.data[4] = ((positionInt & 0x07) << 5) | ((speed >> 10) & 0x1F);

    // Byte 5: Next 8 bits of speed
    canMsg.data[5] = (speed >> 2) & 0xFF;

    // Byte 6: Last 2 bits of speed + 6 MSBs of current threshold
    canMsg.data[6] = ((speed & 0x03) << 6) | ((currentThreshold >> 6) & 0x3F);

    // Byte 7: Remaining 6 bits of current threshold + 2 bits for return status
    canMsg.data[7] = ((currentThreshold & 0x3F) << 2) | (returnStatus & 0x03);

    
  // Send the CAN message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    //Serial.println("Position control command sent successfully");
  } else {
    Serial.println("Error: Failed to send position control command");
  }

  delay(20);  // Wait 10 milliseconds before checking for a response

  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&canMsg) == MCP2515::ERROR_OK) {
    //Serial.print("Received CAN message with ID: 0x");
    //Serial.println(canMsg.can_id, HEX);
    
    // Print received data
    //Serial.print("CAN ID Response Data: ");
    for (int i = 0; i < canMsg.can_dlc; i++) {
     // Serial.print(canMsg.data[i], HEX);
     // Serial.print(" ");
    }
   // Serial.println();

    // Decode the return status from Byte 7
    uint8_t responseReturnStatus = canMsg.data[7] & 0x03;
    //Serial.print("Return Status: ");
    //Serial.println(responseReturnStatus);

  } else {
    //Serial.println("No CAN message received");
  }
}


void MotorZeroSetting(uint16_t canID) {
  
  struct can_frame canMsg;
  
  canMsg.can_id  = 0x7FF;    
  canMsg.can_dlc = 4;            
  canMsg.data[0] = canID>>8;        
  canMsg.data[1] = canID;
  canMsg.data[2] = 0x00;
  canMsg.data[3] = 0x03;
  
  // Send CAN message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.print("Sent Zero Setting");
    Serial.print(canID, HEX);
    Serial.print(" to 0x");
  } else {
    Serial.println("Error sending CAN message to set CAN ID");
  }

  // Delay to ensure the command is processed
  delay(1000);

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
    
  } else {
    Serial.println("No CAN message received");
  }

   delay(1000);
}
