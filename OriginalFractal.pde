public void setup()
{
  size(500, 500);
  background(0);
}
public void draw()
{
  myFractal(0,0,500);
}
public void myFractal(int x, int y, int fSize)
{
  if (fSize == 0)
  {

  }
  else
  {
    fill(255,255,255,10);
    rect(x, y, fSize, fSize);
      rect(x + 50, y + 50, fSize/2, fSize/2);
      rect(x - 50, y - 50, fSize/2, fSize/2);
      rect(x - 50, y + 50, fSize/2, fSize/2);
      rect(x + 50, y - 50, fSize/2, fSize/2);
      rect(x, y + 100, fSize/3, fSize/3);
      rect(x, y - 100, fSize/3, fSize/3);
      rect(x - 100, y, fSize/3, fSize/3);
      rect(x + 100, y, fSize/3, fSize/3);
      line(x, y, x - fSize, y - y);
      line(x, y, x + fSize, y + y);
      line(x, y, x + x, y - fSize);
      line(x, y, x - x, y + fSize);
    fSize = fSize - 5;
    myFractal(250,250,fSize);
  }
}
