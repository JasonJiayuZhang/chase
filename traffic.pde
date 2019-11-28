class Traffic {
  float x, y;
  int h;
  float v;

  void show(){
    ellipse(x, y, h, h);
    if (dist(a, b, x, y)<10)
    {
      background(250, 0, 0);
      println(life);
      life=life-10;
    }

    if (y>650)
    {
      x=random(70, 280);
    }
    if (y>650)
    {
      y=0;
    }
  }

  void energy() {
    y+= (h + height/2)*v;
  }
}
