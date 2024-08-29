
/******************************************************************************

    C++ Script License - Version 1.0
    Author: Gayan Brahmanage, Ph.D.
    Contact: gayansampathefac@gmail.com
    LinkedIn: https://www.linkedin.com/in/gayan-brahmanage/
    GitHub: https://github.com/gayanbrahmanage

    This C++ script is licensed under the terms of the MIT license. Please see
    the following terms and conditions:

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

******************************************************************************/

#include "joystick.h"

joystick::joystick(){


}

joystick::~joystick(){

}

void joystick::connect(message* msg){

  // Ensure that it was found and that we can use it
  if (jstick.isFound()){
    msg->jstickmessage.connected.write(true);
    std::cout<< "Joystick Connected."<<std::endl;
  }else{
    msg->jstickmessage.connected.write(false);
  }

}

void joystick::read(message* msg, gui* caller){

  connect(msg);

  while(msg->jstickmessage.connected.read()){

    // Restrict rate
    usleep(1000);
    // Attempt to sample an event from the joystick
    JoystickEvent event;

    if (jstick.sample(&event)){
      //printf("Button %u is %s\n",event.number, event.value == 0 ? "up" : "down");
      if (event.isButton()){

          if(event.number==0) {
            msg->jstickmessage.button0.write(event.value);

          }else if(event.number==1) {
            msg->jstickmessage.button1.write(event.value);

          }else if(event.number==2) {
            msg->jstickmessage.button2.write(event.value);

          }else if(event.number==3) {
            msg->jstickmessage.button3.write(event.value);

          }else if(event.number==4) {
            msg->jstickmessage.button4.write(event.value);

          }else if(event.number==5) {
            msg->jstickmessage.button5.write(event.value);

          }else if(event.number==6) {
            msg->jstickmessage.button6.write(event.value);

          }else if(event.number==7) {
            msg->jstickmessage.button7.write(event.value);

          }else if(event.number==8) {
            msg->jstickmessage.button8.write(event.value);

          }else if(event.number==9) {
            msg->jstickmessage.button9.write(event.value);

          }else if(event.number==10) {
            msg->jstickmessage.button10.write(event.value);

          }else if(event.number==11) {
            msg->jstickmessage.button11.write(event.value);

          }else{

          }

      }
      else if (event.isAxis()){
        //printf("Axis %u is at position %d\n", event.number, event.value);

        if(event.number==0) {
          msg->jstickmessage.axis0_value.write(event.value);

        }else if(event.number==1) {
          msg->jstickmessage.axis1_value.write(event.value);

        }else if(event.number==2) {
          msg->jstickmessage.axis2_value.write(event.value);

        }
        else if(event.number==3) {
          msg->jstickmessage.axis3_value.write(event.value);

        }else if(event.number==4) {
          msg->jstickmessage.axis4_value.write(event.value);

        }else if(event.number==5) {
          msg->jstickmessage.axis5_value.write(event.value);

        }else{

        }

      }

      caller->Dispatcher_jstick.emit();

    }
  }
}
