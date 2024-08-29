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

#include "esp32.h"

esp32::esp32(){

}

esp32::~esp32(){

  // Close the Serial Port and Serial Stream.
  serial_stream.Close();

}

bool esp32::connect(message* msg){

  try{
      // Open the Serial Port at the desired hardware port.
      serial_stream.Open(SERIAL_PORT) ;
      std::cout<< "Port Opened "<<SERIAL_PORT<<std::endl;

      //Set the baud rates.
      serial_stream.SetBaudRate(LibSerial::BaudRate::BAUD_115200) ;
      // Set the number of data bits.
      serial_stream.SetCharacterSize(LibSerial::CharacterSize::CHAR_SIZE_8) ;
      // Set the hardware flow control.
      serial_stream.SetFlowControl(LibSerial::FlowControl::FLOW_CONTROL_NONE) ;
      // Set the parity.
      serial_stream.SetParity(LibSerial::Parity::PARITY_NONE) ;
      // Set the number of stop bits.
      serial_stream.SetStopBits(LibSerial::StopBits::STOP_BITS_1) ;

      //Wait for data to be available at the serial port.
      while(!serial_stream.rdbuf()->in_avail())
      {
          usleep(1000) ;
      }

      msg->esp32message.esp32_connected.write(true);
      return true;
  }
  catch (const LibSerial::OpenFailed&){
      std::cerr << "The serial port did not open correctly." << std::endl ;
      return false ;
  }
}


void esp32::run(message* msg, gui* caller){

  bool connected=connect(msg);

  char* read_array= new char[8] ;
  std::string read_string = "" ;
  std::string write_string = "" ;

  int value, param;

  // Keep reading data from serial port and print it to the screen.
  while(connected){

      usleep(1000);
      // read
      serial_stream >> read_string;
      decode(read_string,param, value);

      if(param==7){
        msg->esp32message.actual_speed1.write(value);

      }else if(param==8){
        msg->esp32message.actual_speed2.write(value);
      }
      caller->Dispatcher_esp32.emit();


      //write
      int speed1=msg->esp32message.set_speed1.read();
      int dir1=1;
      if(speed1<0){
        speed1=-speed1;
        dir1=0;
      }

      write_string= encode(1, speed1); // speed1
      serial_stream<< write_string << std::endl ;
      serial_stream.DrainWriteBuffer() ;
      write_string= encode(5, dir1); // direction
      serial_stream<< write_string << std::endl ;
      serial_stream.DrainWriteBuffer() ;


      //write
      int speed2=msg->esp32message.set_speed2.read();
      int dir2=0;
      if(speed2<0){
        speed2=-speed2;
        dir2=1;
      }
      write_string= encode(2, speed2); // speed1
      serial_stream<< write_string << std::endl ;
      serial_stream.DrainWriteBuffer() ;
      write_string= encode(6, dir2); // direction
      serial_stream<< write_string << std::endl ;
      serial_stream.DrainWriteBuffer() ;

      int Brake=1;
      if(msg->esp32message.set_brake1.read()){
        Brake=0;
      }
      write_string= encode(4, Brake); // direction
      serial_stream<< write_string << std::endl ;
      serial_stream.DrainWriteBuffer() ;

  }

}

void esp32::decode(std::string str, int& param, int& value){

  if(is_number(str)){

    if(str.size()==7){

      param=stoi(str.substr(0, 3));
      value=stoi(str.substr(3, 4));

    }

  }else{

      param -1;
  }
}

bool esp32::is_number(const std::string& s){
    std::string::const_iterator it = s.begin();
    while (it != s.end() && std::isdigit(*it)) ++it;
    return !s.empty() && it == s.end();
}

std::string esp32::encode(int param, int value){

  std::ostringstream oss1;
  oss1.width(3);
  oss1.fill('0');
  oss1 << param;

  std::ostringstream oss2;
  oss2.width(4);
  oss2.fill('0');
  oss2 << value;

  std::string str=oss1.str()+oss2.str();

  //std::cout<<str<<std::endl;

  return str;
}
