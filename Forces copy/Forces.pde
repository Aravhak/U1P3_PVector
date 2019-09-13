PVector[] pv;
int COUNT = 170;
int direction = 1;
int CurCOUNT = 1;
PVector pos = new PVector(400, 400);
int fps=150;

PVector[] pv2;
int direction2=1;
int CurCOUNT2 = 1;




void setup()
{
  frameRate(fps);
  size(800, 800);

  smooth();
  noStroke();


  pv = new PVector[COUNT];
  pv2 = new PVector[COUNT];


  for (int i=0; i<CurCOUNT; i++)
  {
    pv[i] = new PVector ((i*5), (i*5));
    pv2[i] = new PVector ((800-(i*5)), (i*5));
  }
}



void draw() 
{
  //background(255, 255, 255);
  fill(0, 0, 0, 25);
  rect(0, 0, width, height);
  fill(255);


  ellipse(pos.x, pos.y, 20, 20);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector dir= mouse.sub(pos);
  dir.normalize();
  pos.add(dir);


  mouse=new PVector(mouseX, mouseY);

  fill(0, 0, 255);
  ellipse(mouse.x, mouse.y, 20, 20);
  fill(0);

  for (int i=0; i<CurCOUNT; i++)
  {
    pv[i] = new PVector ((i*5), (i*5));
    pv2[i] = new PVector ((800-(i*5)), (i*5));
  }


  for (int i=0; i<CurCOUNT; i++)
  {
    fill(255, 255, 0);
    ellipse(pv[i].x, pv[i].y, 30, 30);

    if (pv[i].x>800 && pv[i].y>800)
    {
      direction=-1;
    }

    if (pv2[i].x>800 && pv2[i].y>800)
    {
      direction2=-1;
    }


    if (pv[i].x<0 && pv[i].y<0)
    {
      direction=1;
    }

    if (pv2[i].x<0 && pv2[i].y<0)
    {
      direction2=1;
    }
  }
  println(CurCOUNT);
  CurCOUNT=(direction)+CurCOUNT;
  CurCOUNT2=(direction2)+CurCOUNT2;
}