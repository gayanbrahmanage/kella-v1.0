
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

#include "gui.h"

void gui::on_notification_from_thread_esp32(){

  if(msg->auto_mode.read()){
    sbtn_manual.update(true," Auto", 0.7, 0.0, 0.0,20);
  }else{
    sbtn_manual.update(true," Manual", 0.0, 0.7, 0.0,20);
  }


  if(msg->esp32message.set_brake1.read()){
    sbtn_Brake1.update(true," Brake", 0.7, 0.0, 0.0,10);
    sbtn_Brake2.update(true," Brake", 0.7, 0.0, 0.0,10);
  }else{
    sbtn_Brake1.update(false," Brake", 0.0, 0.7, 0.0,10);
    sbtn_Brake2.update(false," Brake", 0.0, 0.7, 0.0,10);
  }

  std::ostringstream oss1;
  oss1.width(4);
  oss1.fill('0');
  oss1 << msg->esp32message.set_speed1.read();
  Message_Label1.set_text("Speed (rpm) "+oss1.str());

  std::ostringstream oss2;
  oss2.width(4);
  oss2.fill('0');
  oss2 << msg->esp32message.set_speed2.read();;
  Message_Label2.set_text("Speed (rpm) "+oss2.str());

  if(msg->esp32message.set_speed1.read()>0){
      sbtn_Dir1.update(true,"  DiR ", 0.0, 0.7, 0.0,13);
  }else{
      sbtn_Dir1.update(true,"  DiR ", 0.7, 0.0, 0.0,13);
  }

  if(msg->esp32message.set_speed2.read()>0){
      sbtn_Dir2.update(true,"  DiR ", 0.0, 0.7, 0.0,13);
  }else{
      sbtn_Dir2.update(true,"  DiR ", 0.7, 0.0, 0.0,13);
  }

  if(msg->esp32message.esp32_connected.read())
    TextBuffer->set_text("ESP 32 Connected.");

}

void gui::on_notification_from_thread_jstick(){

  if(msg->jstickmessage.connected.read())
    TextBuffer->set_text("JoyStick Connected.");

  if(msg->jstickmessage.axis3_value.read()>0){ // maula mode
    msg->auto_mode.write(false);

    int speed1=0;
    int speed2=0;

    if(msg->jstickmessage.button0.read()|| (speed1==0 && speed2)){ // maula mode
      msg->esp32message.set_brake1.write(true);
      msg->esp32message.set_brake2.write(true);
    }else{
      msg->esp32message.set_brake1.write(false);
      msg->esp32message.set_brake2.write(false);
      speed1=(-msg->jstickmessage.axis2_value.read()-msg->jstickmessage.axis1_value.read())/32; // forwad is - for the joystick --> map 65536 to 2048 RPM
      speed2=(msg->jstickmessage.axis2_value.read()-msg->jstickmessage.axis1_value.read())/32; // forwad is - for the joystick --> map 65536 to 2048 RPM
    }

    msg->esp32message.set_speed1.write(speed1);
    msg->esp32message.set_speed2.write(speed2);


  }else{
    msg->auto_mode.write(true);
  }
}
