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

#ifndef esp32_H
#define esp32_H

#include <stdio.h>
#include <sstream>
#include <iostream>
#include <string>
#include <fstream>
#include <cstring>
#include <stdio.h>

#include <cstdlib>
#include <iostream>
#include <unistd.h>
#include <stdexcept>

#include <libserial/SerialStream.h>

#include <message.h>
#include "gui.h"

constexpr const char* const SERIAL_PORT = "/dev/ttyUSB0";

class esp32{

  private:

    // Read a whole array of data from the serial port.
    int BUFFER_SIZE = 256;

    // Instantiate a Serial Port and a Serial Stream object.
    LibSerial::SerialStream serial_stream;


  public:

    esp32();
    ~esp32();
    bool connect(message* msg);
    void run(message* msg, gui* caller);
    std::string encode(int param, int value);
    void decode(std::string str, int& param, int& value);
    bool is_number(const std::string& s);


};

#endif
