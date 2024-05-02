#include <esp_now.h>
#include <WiFi.h>
#include <Wire.h>

uint8_t broadcastAddress[] = {0xC8, 0xF0, 0x9E, 0x7B, 0x73, 0xBC}; //master driver
String success;

typedef struct message {
    float motor1_speed=0;
    float motor2_speed=0;
    bool motor1_dir=true;
    bool motor2_dir=true;
} message;

message send_message;
message received_message;
esp_now_peer_info_t peerInfo;

void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  Serial.print("\r\nLast Packet Send Status:\t");
  Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
  if (status ==0){
    success = "Delivery Success :)";
  }
  else{
    success = "Delivery Fail :(";
  }
}

void OnDataRecv(const uint8_t * mac, const uint8_t *incomingData, int len) {
  memcpy(&received_message, incomingData, sizeof(received_message));
  Serial.print("Bytes received: ");
  Serial.println(len);

}

void setup() {
  // put your setup code here, to run once:
  // Init Serial Monitor
  Serial.begin(115200);
  WiFi.mode(WIFI_STA);

   // Init ESP-NOW
  if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
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
    Serial.println("Failed to add peer");
    return;
  }
  // Register for a callback function that will be called when data is received
  esp_now_register_recv_cb(OnDataRecv);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &send_message, sizeof(send_message));

  if (result == ESP_OK) {
    Serial.println("Sent with success");
  }
  else {
    Serial.println("Error sending the data");
  }
  
}
