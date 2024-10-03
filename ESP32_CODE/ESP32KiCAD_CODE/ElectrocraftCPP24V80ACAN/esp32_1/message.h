// Define a struct to hold motor information

#ifndef MOTORDATA_H
#define MOTORDATA_H

struct MotorData {
  
  byte motorID;   // Motor ID
  uint32_t  set_speed;      // Motor speed (can be positive or negative)
  uint32_t  get_position;  // Motor position
  uint32_t  set_position;  // Motor position
  bool ready;
  bool enable;
  bool fault;
  
};

#endif
