#define ledPin 13

void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available())
  {
    char command;
    if ((command = Serial.read()) == '1')
      digitalWrite(ledPin, HIGH);
    else if (command == '0')
      digitalWrite(ledPin, LOW);
  }
}
