#include <esp_now.h>
#include <WiFi.h>
#include <Wire.h>

uint8_t broadcastAddress[] = {0xB8, 0xD6, 0x1A, 0x40, 0x82, 0x64}; //motor driver
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

void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
 
  if (status ==0){
    success = HIGH;
  }
  else{
    success = LOW;
  }
}

void OnDataRecv(const uint8_t * mac, const uint8_t *incomingData, int len) {
  memcpy(&received_message, incomingData, sizeof(received_message));
}

const int potPin=34;
int potValue = 0;

void setup() {
  // put your setup code here, to run once:
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
  
}

void loop() {

  potValue = analogRead(potPin);
  send_message.motor1_speed=potValue/16;
  send_message.motor2_speed=potValue/16;
  send_message.EN1=LOW;
  send_message.EN2=LOW;
  send_message.Brake1=HIGH;
  send_message.Brake2=HIGH;
  send_message.motor1_dir=HIGH;
  send_message.motor2_dir=HIGH;
  
  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &send_message, sizeof(send_message));


  
}
