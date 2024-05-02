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
int dutyCycle2 = 127                ;

const int potPin=34;
int potValue = 0;

void setup() {  
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

  potValue = analogRead(potPin);
  dutyCycle1=potValue/16;
  dutyCycle2=potValue/16;
  
  ledcWrite(pwmChannel1, dutyCycle1); 
  ledcWrite(pwmChannel2, dutyCycle2);  


  digitalWrite(EN1, LOW);
  digitalWrite(EN2, LOW);

  digitalWrite(Brake1, HIGH);
  digitalWrite(Brake2, HIGH);

  digitalWrite(Dir1, HIGH);
  digitalWrite(Dir2, HIGH);

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
