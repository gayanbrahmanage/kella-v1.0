void GET_Drive_Status(byte CPP, MotorData& Motor1Data){
  byte ad0=0x200E;
  byte ad1=0x00;
  struct can_frame canMsg=send_GET_command(CPP, ad0,ad1 );

  byte byte0=canMsg.data[3];
  byte byte1=canMsg.data[4];
  byte byte2=canMsg.data[5];
  byte byte3=canMsg.data[6];
  
  Motor1Data.ready = byte0 & 0x01;
  Motor1Data.enable= byte0 & 0x02;
  Motor1Data.fault = byte1 & 0x01; 
    
}
