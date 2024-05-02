// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 34;
// variable for storing the potentiometer value
int potValue = 0;

const int led_Y= 4;
const int led_B= 2;
const int led_G= 25;
const int led_R= 26;

const int freq = 3000;
const int resolution = 8;

const int pwmChannel1 = 0;
const int enable1Pin1 = 16; 
const int input1 = 0; 
const int EN1=5;
const int Dir1=32;
const int Brake1=12;
const int Ready1=27;
int dutyCycle1 = 127;

const int pwmChannel2 = 1;
const int enable1Pin2 = 17; 
const int input2 = 15; 
const int EN2=18;
const int Dir2=33;
const int Brake2=13;
const int Ready2=14;
int dutyCycle2 = 127;   

void setup() {
  Serial.begin(115200);
  delay(1000);

  pinMode(led_Y, OUTPUT);
  pinMode(led_B, OUTPUT);
  pinMode(led_G, OUTPUT);
  pinMode(led_R, OUTPUT);

  pinMode(pwmChannel1, OUTPUT);
  ledcSetup(pwmChannel1, freq, resolution);

  pinMode(pwmChannel2, OUTPUT);
  ledcSetup(pwmChannel2, freq, resolution);

  // attach the channel to the GPIO to be controlled
  ledcAttachPin(led_G, pwmChannel1);
  ledcAttachPin(enable1Pin1, pwmChannel1);

  ledcAttachPin(led_Y, pwmChannel2);
  ledcAttachPin(enable1Pin2, pwmChannel2);
  
}

void loop() {
  // Reading potentiometer value
  potValue = analogRead(potPin);

  dutyCycle1=potValue;
  dutyCycle2=potValue;

  ledcWrite(pwmChannel1, dutyCycle1); 
  ledcWrite(pwmChannel2, dutyCycle2);  
}
