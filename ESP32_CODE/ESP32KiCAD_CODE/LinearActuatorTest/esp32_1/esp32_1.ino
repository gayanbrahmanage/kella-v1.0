
// set pin numbers
const int IO5Pin = 33; 
const int IO7Pin = 26; 

const int buttonPin = 27; 
const int ledPin1 =  12;   
const int ledPin2 =  14;   
// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 32;

int potValue = 0;
int buttonState = 0;

// PWM parameters
const int freq = 50;         // 50 Hz frequency for the linear actuator
const int pwmChannel = 0;    // Use PWM channel 0
const int resolution = 8;    // 8-bit resolution (values between 0 and 255)
// PWM duty cycle range for 8-bit resolution
const int minPWM = 0;        // Minimum duty cycle (0%)
const int maxPWM = 128;      // Maximum duty cycle (100%)

void setup() {
  
  // initialize 
  pinMode(buttonPin, INPUT);
  // initialize the LED pin as an output
  pinMode(ledPin1, OUTPUT);
  // initialize the LED pin as an output
  pinMode(ledPin2, OUTPUT);

  // Configure the PWM channel for the actuator control pin
  ledcSetup(pwmChannel, freq, resolution);
  ledcAttachPin(IO7Pin, pwmChannel);
  
  Serial.begin(115200);
  delay(1000);
}

void loop() {

  // Reading potentiometer value
  potValue = analogRead(potPin);
  Serial.println(potValue);
  delay(10);

  int pwmValue = map(potValue, 0, 4095, minPWM, maxPWM);
  
  // Write the PWM value to control the duty cycle
  ledcWrite(pwmChannel, pwmValue);
  
}
