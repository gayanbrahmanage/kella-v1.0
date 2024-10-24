// Define a struct to hold motor information

#ifndef MOTORDATA_H
#define MOTORDATA_H

struct MotorData {
  
  byte motorID;   // Motor ID
  int32_t   set_speed=0;      // Motor speed (can be positive or negative)
  int32_t   set_Move_Relative=0;  // Motor move count
  int32_t  set_Move_current= 200; // Current (Amps) = IU * (Rated Current Max / (2048))
  int32_t  set_Move_speed= 0; // Speed (RPM) = IU * (1RPM / 2048)

  int32_t   get_position;  // Motor position
  bool get_ready=false;
  bool get_enable=false;
  bool get_fault=false;
  
};

#endif
