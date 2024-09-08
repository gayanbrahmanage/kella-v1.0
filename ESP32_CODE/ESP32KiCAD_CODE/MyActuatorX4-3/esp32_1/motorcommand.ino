void read_temp_speed_pose(uint16_t ID, uint16_t &temp, uint16_t &torque, uint16_t &speed, uint16_t &pose){
  
  struct can_frame canMsg;
  canMsg.can_id  = ID;    
  canMsg.can_dlc = 8;         
  canMsg.data[0] = 0x9C;        
  canMsg.data[1] = 0x00;
  canMsg.data[2] = 0x00;
  canMsg.data[3] = 0x00;
  canMsg.data[4] = 0x00;
  canMsg.data[5] = 0x00;
  canMsg.data[6] = 0x00;
  canMsg.data[7] = 0x00;

  // Send the CAN message to request ID
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
 
  } else {
    Serial.println("Error sending CAN message to read CAN ID");
  }

  // Delay to allow the motor to reply
  delay(10);

  // Check for received CAN messages (the response from the motor)
  if (mcp2515.readMessage(&canMsg) == MCP2515::ERROR_OK) {
    temp = canMsg.data[1];
    torque = (canMsg.data[2] << 8) | canMsg.data[3];
    speed = (canMsg.data[5] << 8) | canMsg.data[4];
    pose = (canMsg.data[7] << 8) | canMsg.data[6];
    
  } else {
    Serial.println("No CAN message received");
  }
  
}


void set_absolute_pose(uint16_t ID, uint16_t speedmax, uint32_t pose){

  struct can_frame canMsg;
  canMsg.can_id  = ID;    
  canMsg.can_dlc = 8;         
  canMsg.data[0] = 0xA4;        
  canMsg.data[1] = 0x00;
   // Split the uint16_t value into two bytes
  canMsg.data[2] = speedmax; 
  canMsg.data[3] = (speedmax >> 8);  // Higher byte
  // Split the uint32_t value into four bytes
  canMsg.data[4] = pose ;            // Least significant byte
  canMsg.data[5] = (pose >> 8) ;     // Next byte
  canMsg.data[6] = (pose >> 16) ;    // Next byte
  canMsg.data[7] = (pose >> 24) ;    // Most significant byte

  // Send the CAN message to request ID
  if (mcp2515.sendMessage(&canMsg) == MCP2515::ERROR_OK) {
    Serial.print(pose);
  } else {
    Serial.println("Error sending CAN message to read CAN ID");
  }
  
}
