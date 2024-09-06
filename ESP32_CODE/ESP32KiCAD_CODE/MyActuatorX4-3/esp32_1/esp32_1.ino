#include <SPI.h>
#include <mcp2515.h>

struct can_frame canMsg1;

MCP2515 mcp2515(5);
uint16_t ID=0x141;
uint16_t ctemp, ctorque, cspeed, cpose;
 
void setup() {
  
  configureCAN();
  setMotorCANID(ID, ID); // Set motor 1 CAN ID from 0x141 to 0x142
  readMotorCANID(ID);

  set_absolute_pose(ID, 0x110,36000);
}

void loop() {
  
 read_temp_speed_pose(ID, ctemp, ctorque, cspeed, cpose);

 //Serial.print("pose: ");
 //Serial.println(cpose);
 
}
