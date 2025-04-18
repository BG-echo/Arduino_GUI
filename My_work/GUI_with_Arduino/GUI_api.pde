class Button
{
  public Button(String t, int x, int y, color Color, color highlight)
  {
    
    textSize(30);
    
    this.msg = t;
    this.buttonX = x;
    this.buttonY = y;
    this.buttonWidth = textWidth(t);
    this.buttonHeigth = textAscent() + textDescent();
    this.buttonColor = Color;
    this.buttonHighlight= highlight;
    
    text(t, buttonX + 5, buttonY + 5);
  }
  
  public void changeText(String t)
  {
    this.msg = t;
  }
  
  public void show()
  {
    this.update();
    
    if (buttonOver)
    {
      fill(buttonHighlight);
    }
    else
    {
      fill(buttonColor);
    }
    stroke(255);
    rect(buttonX, buttonY - textAscent() - 5, buttonWidth + 10, buttonHeigth + 15);
    fill(0);
    text(this.msg, buttonX + 5, buttonY + 5);

  }
  
  private void update()
  {
    buttonOver = this.overButton(buttonX, buttonY - textAscent() - 5, buttonWidth + 10, buttonHeigth + 15);
  }
  
  private boolean overButton(float x, float y, float w, float h)
  {
    if(mouseX >= x && mouseX <= x+w &&
       mouseY >= y && mouseY <= y+h)
    {
      return true;
    }else
    {
      return false;
    }
  }
  
  private String msg;
  private int buttonX, buttonY;
  private float buttonWidth, buttonHeigth;
  private color buttonColor;
  private color buttonHighlight;
  public boolean buttonOver = false;
};
