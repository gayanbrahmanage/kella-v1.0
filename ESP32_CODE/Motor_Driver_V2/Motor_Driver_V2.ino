#include <esp_now.h>
#include <WiFi.h>
#include <Wire.h>

uint8_t broadcastAddress[] = {0xC8, 0xF0, 0x9E, 0x7B, 0x73, 0xBC}; //master driver
bool success;


typedef struct message {
    int motor1_speed=0;
    int motor2_speed=0;
    bool motor1_dir=LOW;
    bool motor2_dir=HIGH;
    bool EN1=HIGH;
    bool EN2=HIGH;
    bool Brake1=LOW;
    bool Brake2=LOW;
} message;


message send_message;
message received_message;
esp_now_peer_info_t peerInfo;

const int led_Y= 4;
const int led_B= 2;
const int led_G= 25;
const int led_R= 26;

const int freq = 100;
const int resolution = 8;

const int pwmChannel1 = 0;
const int enable1Pin1 = 16; 
const int input1 = 0; 
const int EN1=5;
const int Dir1=32;
const int Brake1=12;
const int Ready1=27;
int dutyCycle1 = 0;
bool direction1_cmd=LOW;
bool enable1_cmd=HIGH;
bool Brake1_cmd=LOW;

const int pwmChannel2 = 1;
const int enable1Pin2 = 17; 
const int input2 = 15; 
const int EN2=18;
const int Dir2=33;
const int Brake2=13;
const int Ready2=14;
int dutyCycle2 = 0;
bool direction2_cmd=HIGH;
bool enable2_cmd=HIGH;
bool Brake2_cmd=LOW;

void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  
  if (status ==0){
    success = true;
  }
  else{
    success = false;
  }
}

void OnDataRecv(const uint8_t * mac, const uint8_t *incomingData, int len) {
  memcpy(&received_message, incomingData, sizeof(received_message));
  dutyCycle1=received_message.motor1_speed;
  dutyCycle2=received_message.motor2_speed;
  direction1_cmd=received_message.motor1_dir;
  direction2_cmd=received_message.motor2_dir;
}

void setup() {  

  WiFi.mode(WIFI_STA);
  // Init ESP-NOW
  if (esp_now_init() != ESP_OK) {
    return;
  }

  // Once ESPNow is successfully Init, we will register for Send CB to
  // get the status of Trasnmitted packet
  esp_now_register_send_cb(OnDataSent);
  
  // Register peer
  memcpy(peerInfo.peer_addr, broadcastAddress, 6);
  peerInfo.channel = 0;  
  peerInfo.encrypt = false;
  
  // Add peer        
  if (esp_now_add_peer(&peerInfo) != ESP_OK){
    return;
  }
  // Register for a callback function that will be called when data is received
  esp_now_register_recv_cb(OnDataRecv);
  
  pinMode(led_Y, OUTPUT);
  pinMode(led_B, OUTPUT);
  //pinMode(led_G, OUTPUT);
  //pinMode(led_R, OUTPUT);

  pinMode(EN1, OUTPUT);
  pinMode(EN2, OUTPUT);
  pinMode(Dir1, OUTPUT);
  pinMode(Dir2, OUTPUT);
  pinMode(Brake1, OUTPUT);
  pinMode(Brake2, OUTPUT);

  pinMode(input1, INPUT);
  pinMode(input2, INPUT);
  
  pinMode(Ready1, INPUT);
  pinMode(Ready2, INPUT);

  Serial.begin(115200);
  delay(1000);
  
  pinMode(pwmChannel1, OUTPUT);
  ledcSetup(pwmChannel1, freq, resolution);

  pinMode(pwmChannel2, OUTPUT);
  ledcSetup(pwmChannel2, freq, resolution);

  // attach the channel to the GPIO to be controlled
  ledcAttachPin(led_R, pwmChannel1);
  ledcAttachPin(enable1Pin1, pwmChannel1);

  ledcAttachPin(led_G, pwmChannel2);
  ledcAttachPin(enable1Pin2, pwmChannel2);
}

void loop() {

  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &send_message, sizeof(send_message));

  ledcWrite(pwmChannel1, dutyCycle1); 
  ledcWrite(pwmChannel2, dutyCycle2);  


  digitalWrite(EN1, enable1_cmd);
  digitalWrite(EN2, enable2_cmd);

  digitalWrite(Brake1, Brake1_cmd);
  digitalWrite(Brake2, Brake2_cmd);

  digitalWrite(Dir1, direction1_cmd);
  digitalWrite(Dir2, direction2_cmd);

  if(!digitalRead(Ready1)){
    digitalWrite(led_B, HIGH);
  }else{
    digitalWrite(led_B, LOW);
  }

  if(!digitalRead(Ready2)){
    digitalWrite(led_Y, HIGH);
  }else{
    digitalWrite(led_Y, LOW);
  }

}
