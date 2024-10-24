void SET_Digital_Output(byte CPP){

  uint32_t  set_val=0x10000000;
  uint16_t Address=0x2040;
  byte ad0=Address & 0xFF;
  byte ad1=(Address >> 8) & 0xFF;
  send_SET_command(CPP, ad0, ad1, set_val);
  
}
