#include <SPI.h>
#include <mcp2515.h>
#include "message.h"
#include "io.h"
#include "RF_remote.h"

// Initialize MCP2515
MCP2515 mcp2515(5);

byte CPP1=0x01;
MotorData Motor1Data;

byte CPP2=0x02;
MotorData Motor2Data;

RF remote=RF();

void setup() {
  
  init_io();

  digitalWrite(IO5Pin, HIGH); // MPW52 CAN enable external input

  configureCAN();
  delay(10);
  Reset(CPP1);
  delay(10);
  Reset(CPP2);
  delay(10);
  enable(CPP1,Motor1Data);
  delay(10);
  enable(CPP2,Motor2Data);
  delay(10);

  //remote
  remote.init();
  
}

void loop() {

  remote.get_remote_input(Motor1Data, Motor2Data);
  
  GET_Drive_Status(CPP1, Motor1Data);
  GET_Drive_Status(CPP2, Motor2Data);

  output(Motor2Data);
  
//  Serial.println(Motor2Data.get_ready);
//  Serial.println(Motor2Data.get_enable);
//  Serial.println(Motor2Data.get_fault);

  buttonState = digitalRead(buttonPin);
  potValue = analogRead(potPin);

  //Motor1Data.set_Move_Relative=potValue-2048;
  //Motor2Data.set_Move_Relative=potValue-2048;
  
  
  if (buttonState == HIGH) {
     Reset(CPP1);
     delay(1000);
     SET_Digital_Output( CPP1);
     delay(1000);
     enable(CPP1,Motor1Data);
     delay(1000);

     Reset(CPP2);
     delay(1000);
     enable(CPP2,Motor2Data);
     delay(1000);
     
//     move_speed(CPP1);
//     delay(1000);
//     move_current(CPP1);
//     delay(1000);
//     brake(CPP1, 0x00);
     
  }else{

  }
  
  if(Motor1Data.get_enable & Motor1Data.get_ready){
    move_relative(CPP1,Motor1Data); 
    //Motor1Data.set_Move_speed =Motor1Data.set_Move_Relative;
    //move_speed(CPP1,Motor1Data); 
 
  }

  Serial.println(Motor1Data.set_Move_Relative);
  
   if(Motor2Data.get_enable & Motor2Data.get_ready){
    move_relative(CPP2,Motor2Data); 
    //Motor2Data.set_Move_speed =Motor2Data.set_Move_Relative;
    //move_speed(CPP2,Motor2Data); 
  } 

}
