struct can_frame send_GET_command(byte CPP, byte ad0, byte ad1 ){

  struct can_frame canMsg; 

  // Example values for constructing the 29-bit identifier
  byte priority = 0x01;       // Priority = 2
  byte serviceBit = 0x01;     // Service Bit = 1 (always 1)
  byte requestBit = 0x01;     // Request Bit = 1 (Request = 1, Response = 0)
  byte serviceID = 0x30;      // GET service command = 0x00
  byte axisGroup = 0x01;      // Axis = 1 (for single drive)
  byte destID = CPP;         // Destination ID = 01
  byte hostBit = 0x00;        // Host Bit = 0 (for host PC)
  byte sourceID = 0x30;       // Source ID = 48

  // Construct the 29-bit CAN ID
  unsigned long canID = constructCANID(priority, serviceBit, requestBit, serviceID, axisGroup, destID, hostBit, sourceID);


  // Display the constructed 29-bit CAN ID
  //Serial.print("Constructed 29-bit CAN ID: ");
  //Serial.println(canID, HEX);

  // Prepare the CAN message with a 29-bit identifier (Extended frame)
  canMsg.can_id = canID;     // 29-bit ID
  canMsg.can_id |= CAN_EFF_FLAG;  // Set the Extended Frame Format (EFF) flag
  canMsg.can_dlc = 0x03;        // 3 data bytes

  // Example data for GET command (you can modify this)
  canMsg.data[0] = 0x04;
  canMsg.data[1] = ad0;
  canMsg.data[2] = ad1;
 

  // Send the message
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    //Serial.println("GET service command sent successfully");
  } else {
    Serial.println("Error sending GET service command");
  }

    // Delay to allow the motor to reply
  delay(10);

   struct can_frame rcanMsg; 
  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&rcanMsg) == MCP2515::ERROR_OK) {

  } else {
    Serial.println("No CAN message received");
  }

  return rcanMsg;
}
