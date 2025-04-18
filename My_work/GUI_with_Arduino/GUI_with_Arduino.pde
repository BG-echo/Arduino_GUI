import processing.serial.*;

Serial myPort;
Button button;

boolean alreadyClicked = false; // Is button alread clicked

void setup()
{
  size(900, 700, P2D);
  printArray(Serial.list());
  String portName = Serial.list()[2];
  button = new Button("Start", width - 100, height - 100, color(220), color(180));

  myPort = new Serial(this, portName, 9600);
  
}

void draw()
{
  background(255);
  button.show();
  if(alreadyClicked)
  {
    myPort.write('1');
  }
}

void mousePressed()
{
  if(button.buttonOver)
  {
    if(alreadyClicked)
    {
      alreadyClicked = false;
      button.changeText("Start");
    }
    else
    {
      alreadyClicked = true;
      button.changeText("Stop");
    }
    myPort.write('1');
  }
}

void mouseReleased()
{
  if(alreadyClicked == false)
  {
    myPort.write('0');
  }
}
