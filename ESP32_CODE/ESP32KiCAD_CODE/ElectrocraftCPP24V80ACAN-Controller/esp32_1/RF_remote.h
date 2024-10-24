
#ifndef RF_remote_H
#define RF_remote_H

#include <RCSwitch.h>
#include "message.h"

// set pin numbers
const int IO7Pin = 26; 

RCSwitch mySwitch = RCSwitch();  // Create an instance of RCSwitch

class RF{

  public:

      const int SW1=5330179;
      const int SW2=5330188;
      const int SW3=5330191;
      const int SW4=5330224;
      const int SW5=5330227;
      const int SW6=5330236;
      const int SW7=5330239;
      const int SW8=5330368;
      const int SW9=5330371;
      const int SW10=5330380;
      const int SW11=5330383;
      const int SW12=5330416;
      
      int receivedValue=-1;
      int32_t  step_size=20480;

      RF(){
        
      }
      
      void init(){
          // initialize 
        // Set pin 33 as input and configure the RF receiver
        mySwitch.enableReceive(digitalPinToInterrupt(IO7Pin));  // Set pin 33 as the interrupt pin
        
        // Confirm that receiver setup is done
        Serial.println("433MHz RF Receiver Initialized on pin 26.");
        
      }
      
      void get_remote_input(MotorData& Motor1Data, MotorData& Motor2Data){
      
        // Check if a signal has been received
        if (mySwitch.available()) {
          // Get the received value
          receivedValue = mySwitch.getReceivedValue();
          
          // If the received value is valid
          if (receivedValue != 0) {
            //Serial.print("Received Code: ");
            //Serial.println(receivedValue);
          } else {
            //Serial.println("Unknown RF signal received.");
          }
          
          // Reset the receiver to be ready for the next signal
          mySwitch.resetAvailable();
        } else {
          // Print this periodically to ensure the loop is running
        }

        if(receivedValue==SW3){
          Motor1Data.set_Move_Relative+=step_size;
          Motor2Data.set_Move_Relative-=step_size;
        }else if(receivedValue==SW5){
          Motor1Data.set_Move_Relative-=step_size;
          Motor2Data.set_Move_Relative+=step_size;
        }else if(receivedValue==SW2){
          Motor1Data.set_Move_Relative-=step_size;
          Motor2Data.set_Move_Relative-=step_size;
        }else if(receivedValue==SW1){
          Motor1Data.set_Move_Relative+=step_size;
          Motor2Data.set_Move_Relative+=step_size;
        }

        Serial.println(Motor1Data.set_Move_Relative);
        
      // Receive indicator
        if(receivedValue!=-1){
          digitalWrite(ledPin3, HIGH);
          receivedValue=-1;
        }else{
          digitalWrite(ledPin3, LOW);
          //Motor1Data.set_Move_Relative-=getSign(Motor1Data.set_Move_Relative)*step_size*0.1;
          //Motor2Data.set_Move_Relative-=getSign(Motor2Data.set_Move_Relative)*step_size*0.1;
          Motor1Data.set_Move_Relative=0;
          Motor2Data.set_Move_Relative=0;     
        }
      }

      int getSign(int32_t num) {
        if (num > 0) {
          return 1;  // Positive
        } else if (num < 0) {
          return -1; // Negative
        } else {
          return 0;  // Zero
        }
    }

};

#endif
