void  Reset(byte CPP){

  struct can_frame canMsg; 

  // Example values for constructing the 29-bit identifier
  byte priority = 0x01;       // Priority = 2
  byte serviceBit = 0x01;     // Service Bit = 1 (always 1)
  byte requestBit = 0x01;     // Request Bit = 1 (Request = 1, Response = 0)
  byte serviceID = 0xFF;      // GET service command = 0x00
  byte axisGroup = 0x01;      // Axis = 1 (for single drive)
  byte destID = CPP;         // Destination ID = 01
  byte hostBit = 0x00;        // Host Bit = 1 (for host PC)
  byte sourceID = 0x30;       // Source ID = 48

  // Construct the 29-bit CAN ID
  unsigned long canID = constructCANID(priority, serviceBit, requestBit, serviceID, axisGroup, destID, hostBit, sourceID);
 
  // Prepare the CAN message with a 29-bit identifier (Extended frame)
  canMsg.can_id = canID;     // 29-bit ID
  canMsg.can_id |= CAN_EFF_FLAG;  // Set the Extended Frame Format (EFF) flag
  canMsg.can_dlc = 0x00;        // 0 data bytes


  // Send the message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.println("Driver reset succsesful");
  } else {
    Serial.println("Error sending reset command");
  }

    // Delay to allow the motor to reply
  delay(10);

}

void enable(byte CPP, MotorData& MotorxData){

  struct can_frame canMsg; 

  // Example values for constructing the 29-bit identifier
  byte priority = 0x01;       // Priority = 1
  byte serviceBit = 0x01;     // Service Bit = 1 (always 1)
  byte requestBit = 0x01;     // Request Bit = 1 (Request = 1, Response = 0)
  byte serviceID = 0x00;      // GET service command = 0x00
  byte axisGroup = 0x01;      // Axis = 1 (for single drive)
  byte destID = CPP;         // Destination ID = 01
  byte hostBit = 0x00;        // Host Bit = 1 (for host PC)
  byte sourceID = 0x30;       // Source ID = 30

  // Construct the 29-bit CAN ID
  unsigned long canID = constructCANID(priority, serviceBit, requestBit, serviceID, axisGroup, destID, hostBit, sourceID);
 
  // Prepare the CAN message with a 29-bit identifier (Extended frame)
  canMsg.can_id = canID;     // 29-bit ID
  canMsg.can_id |= CAN_EFF_FLAG;  // Set the Extended Frame Format (EFF) flag
  canMsg.can_dlc = 0x01;        // 3 data bytes

  canMsg.data[0] = 0x01;


  // Send the message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.println("Driver enable command sent ");
  } else {
    Serial.println("Error sending enable command");
  }

    // Delay to allow the motor to reply
  delay(10);
  struct can_frame rcanMsg;
  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&rcanMsg) == MCP2515::ERROR_OK) {
    Serial.println("Driver enable");
    Serial.println(rcanMsg.data[0]);
  } else {
    Serial.println("No CAN message received");
  }
}

void brake(byte CPP, byte brake){

  struct can_frame canMsg; 

  // Example values for constructing the 29-bit identifier
  byte priority = 0x01;       // Priority = 1
  byte serviceBit = 0x01;     // Service Bit = 1 (always 1)
  byte requestBit = 0x01;     // Request Bit = 1 (Request = 1, Response = 0)
  byte serviceID = 0x01;      // GET service command = 0x00
  byte axisGroup = 0x01;      // Axis = 1 (for single drive)
  byte destID = CPP;         // Destination ID = 01
  byte hostBit = 0x00;        // Host Bit = 1 (for host PC)
  byte sourceID = 0x30;       // Source ID = 30

  // Construct the 29-bit CAN ID
  unsigned long canID = constructCANID(priority, serviceBit, requestBit, serviceID, axisGroup, destID, hostBit, sourceID);
 
  // Prepare the CAN message with a 29-bit identifier (Extended frame)
  canMsg.can_id = canID;     // 29-bit ID
  canMsg.can_id |= CAN_EFF_FLAG;  // Set the Extended Frame Format (EFF) flag
  canMsg.can_dlc = 0x01;        // 3 data bytes

  canMsg.data[0] = brake;


  // Send the message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.println("Brake command sent ");
  } else {
    Serial.println("Error sending braking command");
  }

    // Delay to allow the motor to reply
  delay(10);

   struct can_frame rcanMsg;
  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&rcanMsg) == MCP2515::ERROR_OK) {
    Serial.println("Driver brake");
    Serial.println(rcanMsg.data[0]);
  } else {
    Serial.println("No CAN message received");
  }
}
