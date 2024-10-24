void move_relative(byte CPP, MotorData& Motor1Data){

  //Serial.println(Motor1Data.set_Move_Relative);
  
  struct can_frame canMsg; 

  // Example values for constructing the 29-bit identifier
  byte priority = 0x01;       // Priority = 1
  byte serviceBit = 0x01;     // Service Bit = 1 (always 1)
  byte requestBit = 0x01;     // Request Bit = 1 (Request = 1, Response = 0)
  byte serviceID = 0x41;      // GET service command = 0x00
  byte axisGroup = 0x01;      // Axis = 1 (for single drive)
  byte destID = CPP;         // Destination ID = 01
  byte hostBit = 0x00;        // Host Bit = 1 (for host PC)
  byte sourceID = 0x30;       // Source ID = 30

  // Construct the 29-bit CAN ID
  unsigned long canID = constructCANID(priority, serviceBit, requestBit, serviceID, axisGroup, destID, hostBit, sourceID);
 
  // Prepare the CAN message with a 29-bit identifier (Extended frame)
  canMsg.can_id = canID;     // 29-bit ID
  canMsg.can_id |= CAN_EFF_FLAG;  // Set the Extended Frame Format (EFF) flag
  canMsg.can_dlc = 0x05;        // 5 data bytes

  canMsg.data[0] = 0x03;
  canMsg.data[1] = Motor1Data.set_Move_Relative & 0xFF;
  canMsg.data[2] = (Motor1Data.set_Move_Relative >> 8) & 0xFF;
  canMsg.data[3] = (Motor1Data.set_Move_Relative >> 16) & 0xFF;
  canMsg.data[4] = (Motor1Data.set_Move_Relative >> 24) & 0xFF;

  // Send the message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.println(" sending move_relative command");
    Serial.println(canMsg.data[2], HEX);
  } else {
    Serial.println("Error sending move_relative command");
  }

    // Delay to allow the motor to reply
  delay(10);

   struct can_frame rcanMsg;
  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&rcanMsg) == MCP2515::ERROR_OK) {
     Serial.println(" Successsful move_relative command");
     Serial.println(rcanMsg.data[0], HEX);
     Serial.println(rcanMsg.data[1], HEX);
  } else {
    Serial.println("No CAN message received");
  }
}

void move_current(byte CPP){

  struct can_frame canMsg; 

  // Example values for constructing the 29-bit identifier
  byte priority = 0x01;       // Priority = 1
  byte serviceBit = 0x01;     // Service Bit = 1 (always 1)
  byte requestBit = 0x01;     // Request Bit = 1 (Request = 1, Response = 0)
  byte serviceID = 0x41;      // GET service command = 0x00
  byte axisGroup = 0x01;      // Axis = 1 (for single drive)
  byte destID = CPP;         // Destination ID = 01
  byte hostBit = 0x00;        // Host Bit = 1 (for host PC)
  byte sourceID = 0x30;       // Source ID = 30

  // Construct the 29-bit CAN ID
  unsigned long canID = constructCANID(priority, serviceBit, requestBit, serviceID, axisGroup, destID, hostBit, sourceID);
 
  // Prepare the CAN message with a 29-bit identifier (Extended frame)
  canMsg.can_id = canID;     // 29-bit ID
  canMsg.can_id |= CAN_EFF_FLAG;  // Set the Extended Frame Format (EFF) flag
  canMsg.can_dlc = 0x05;        // 3 data bytes

  canMsg.data[0] = 0x10;
  canMsg.data[1] = Motor1Data.set_Move_current & 0xFF;
  canMsg.data[2] = (Motor1Data.set_Move_current >> 8) & 0xFF;
  canMsg.data[3] = (Motor1Data.set_Move_current >> 16) & 0xFF;
  canMsg.data[4] = (Motor1Data.set_Move_current >> 24) & 0xFF;

  // Send the message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    //Serial.println(" sending move_current command");
  } else {
    Serial.println("Error sending move_current command");
  }

    // Delay to allow the motor to reply
  delay(10);

  struct can_frame rcanMsg;
  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&rcanMsg) == MCP2515::ERROR_OK) {
      Serial.println(" Successsful move_current command");
     Serial.println(rcanMsg.data[0], HEX);
  } else {
    Serial.println("No CAN message received");
  }
  
}

void move_speed(byte CPP, MotorData& MotorxData){

  struct can_frame canMsg; 

  // Example values for constructing the 29-bit identifier
  byte priority = 0x01;       // Priority = 1
  byte serviceBit = 0x01;     // Service Bit = 1 (always 1)
  byte requestBit = 0x01;     // Request Bit = 1 (Request = 1, Response = 0)
  byte serviceID = 0x41;      // 
  byte axisGroup = 0x01;      // Axis = 1 (for single drive)
  byte destID = CPP;         // Destination ID = 01
  byte hostBit = 0x00;        // Host Bit = 1 (for host PC)
  byte sourceID = 0x30;       // Source ID = 30

  // Construct the 29-bit CAN ID
  unsigned long canID = constructCANID(priority, serviceBit, requestBit, serviceID, axisGroup, destID, hostBit, sourceID);
 
  // Prepare the CAN message with a 29-bit identifier (Extended frame)
  canMsg.can_id = canID;     // 29-bit ID
  canMsg.can_id |= CAN_EFF_FLAG;  // Set the Extended Frame Format (EFF) flag
  canMsg.can_dlc = 0x05;        // 3 data bytes

  canMsg.data[0] = 0x20;
  canMsg.data[1] = MotorxData.set_Move_speed & 0xFF;
  canMsg.data[2] = (MotorxData.set_Move_speed >> 8) & 0xFF;
  canMsg.data[3] = (MotorxData.set_Move_speed >> 16) & 0xFF;
  canMsg.data[4] = (MotorxData.set_Move_speed >> 24) & 0xFF;

  // Send the message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    //Serial.println(" sending move_speed command");
  } else {
    Serial.println("Error sending move_speed command");
  }

    // Delay to allow the motor to reply
  delay(10);

  struct can_frame rcanMsg;
  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&rcanMsg) == MCP2515::ERROR_OK) {
    //Serial.println(" Successsful move_speed command");
    //Serial.println(rcanMsg.data[0], HEX);
  } else {
    Serial.println("No CAN message received");
  }
  
}
