// Function to construct the 29-bit CAN ID with all specified fields
unsigned long constructCANID(byte priority, byte serviceBit, byte requestBit, byte serviceID, 
                             byte axisGroup, byte destID, byte hostBit, byte sourceID) {
  unsigned long canID = 0;

  // Shift and combine the fields into a 29-bit identifier
  canID |= ((unsigned long)priority & 0x07) << 26;       // 3-bit Priority
  canID |= ((unsigned long)serviceBit & 0x01) << 25;     // 1-bit Service Bit (always 1)
  canID |= ((unsigned long)requestBit & 0x01) << 24;     // 1-bit Request/Response Bit
  canID |= ((unsigned long)serviceID & 0xFF) << 16;      // 8-bit Service ID
  canID |= ((unsigned long)axisGroup & 0x01) << 15;      // 1-bit Axis/Group Bit
  canID |= ((unsigned long)destID & 0x7F) << 8;          // 7-bit Destination ID
  canID |= ((unsigned long)hostBit & 0x01) << 7;         // 1-bit Host Bit
  canID |= ((unsigned long)sourceID & 0x7F);             // 7-bit Source ID

  return canID;
}
