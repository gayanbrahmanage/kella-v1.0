void GET_Drive_Status(byte CPP, MotorData& Motor1Data){

  uint16_t Address=0x200E;

  byte ad0=Address & 0xFF;
  byte ad1=(Address >> 8) & 0xFF;
  struct can_frame canMsg=send_GET_command(CPP, ad0,ad1 );

  byte byte0=canMsg.data[3];
  byte byte1=canMsg.data[4];
  byte byte2=canMsg.data[5];
  byte byte3=canMsg.data[6];
  
  Motor1Data.get_ready = byte0 & 0x01;
  Motor1Data.get_enable= byte0 & 0x02;
  Motor1Data.get_fault = byte1 & 0x01; 

    // Shift byte1 to the left by 8 bits and OR with byte0
  uint16_t Addressr= (canMsg.data[2] << 8) | canMsg.data[1];
  //Serial.println(Addressr, HEX);
      
}
