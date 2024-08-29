#include "message.h"

message::message(){
  init();
}

message::~message(){

}

void message::init(){

  auto_mode.write(true);

}
