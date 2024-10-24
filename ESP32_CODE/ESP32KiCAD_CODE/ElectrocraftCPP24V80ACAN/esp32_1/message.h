// Define a struct to hold motor information

#ifndef MOTORDATA_H
#define MOTORDATA_H

struct MotorData {
  
  byte motorID;   // Motor ID
  uint32_t  set_speed;      // Motor speed (can be positive or negative)
  uint32_t  set_Move_Relative;  // Motor move count
  uint32_t set_Move_current= 200; // Current (Amps) = IU * (Rated Current Max / (2048))
  uint32_t set_Move_speed= 204800; // Speed (RPM) = IU * (1RPM / 2048)

  uint32_t  get_position;  // Motor position
  bool get_ready;
  bool get_enable;
  bool get_fault;
  
};

#endif
