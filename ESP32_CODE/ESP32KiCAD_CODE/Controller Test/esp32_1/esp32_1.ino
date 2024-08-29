
// set pin numbers

const int buttonPin = 27; 
const int ledPin1 =  12;   
const int ledPin2 =  14;   
// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 32;

int potValue = 0;
int buttonState = 0;

void setup() {
  
  // initialize 
  pinMode(buttonPin, INPUT);
  // initialize the LED pin as an output
  pinMode(ledPin1, OUTPUT);
  // initialize the LED pin as an output
  pinMode(ledPin2, OUTPUT);

  Serial.begin(115200);
  delay(1000);
}

void loop() {

  // Reading potentiometer value
  potValue = analogRead(potPin);
  Serial.println(potValue);
  delay(500);
  
  buttonState = digitalRead(buttonPin);

  if (buttonState == HIGH) {
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin2, LOW);
  }else{
    digitalWrite(ledPin1, LOW);
    digitalWrite(ledPin2, HIGH);
  }

}
