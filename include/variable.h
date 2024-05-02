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

#ifndef VARIABLE_H
#define VARIABLE_H

#include <mutex>

template <class T> class variable{

  private:
    T value;
    std::mutex mtx;

  public:
    variable(){

    }
    ~variable(){

    }

    void write(const T &t){
      std::lock_guard<std::mutex> lock(mtx);
      value=t;
    }

    T read(){
      std::lock_guard<std::mutex> lock(mtx);
      return value;
    }


};

class joystick_msg{

  private:

    std::mutex mtx;

  public:

    variable<bool> connected;

    variable<bool> button0;
    variable<bool> button1;
    variable<bool> button2;
    variable<bool> button3;
    variable<bool> button4;
    variable<bool> button5;
    variable<bool> button6;
    variable<bool> button7;
    variable<bool> button8;
    variable<bool> button9;
    variable<bool> button10;
    variable<bool> button11;

    variable<int> axis0_value;
    variable<int> axis1_value;
    variable<int> axis2_value;
    variable<int> axis3_value;
    variable<int> axis4_value;
    variable<int> axis5_value;

    joystick_msg(){
      reset();
    }

    ~joystick_msg(){

    }

    void reset(){

      button0.write(false);
      button1.write(false);
      button2.write(false);
      button3.write(false);
      button4.write(false);
      button5.write(false);
      button6.write(false);
      button7.write(false);
      button8.write(false);
      button9.write(false);
      button10.write(false);
      button11.write(false);

      axis0_value.write(0);
      axis1_value.write(0);
      axis2_value.write(0);
      axis3_value.write(0);
      axis4_value.write(0);
      axis5_value.write(0);

    }


};

class esp32_msg{

  public:
    std::mutex mtx;

    variable<int> set_speed1;
    variable<int> set_speed2;
    variable<int> set_brake1;
    variable<int> set_brake2;
    variable<int> set_dir1;
    variable<int> set_dir2;

    variable<int> actual_speed1;
    variable<int> actual_speed2;
    variable<bool> esp32_connected;

    esp32_msg(){
      reset();
    }

    ~esp32_msg(){

    }


    void reset(){

      set_speed1.write(0);
      set_speed2.write(0);
      set_brake1.write(0);
      set_brake2.write(0);
      set_dir1.write(0);
      set_dir2.write(0);

      actual_speed1.write(0);
      actual_speed2.write(0);
      esp32_connected.write(false);
    }

};

#endif
