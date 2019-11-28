Traffic[] t;
int screenNumber;
int a=175, b=600;
int c, d=-650, e, f=-1300;
int life=600;
float a1, b1;
PImage bg, bg1;
ArrayList<GameObject> myGameObjects;
color yellow = #DFE800;   
color green = #0DD142;
color lgreen = #16861A;
color purple = #9575DB;
color blue = #75DBC9;
color lblue = #23A7B7;
color rred = #9B1F1F;
color red = #E3102C;
color black = #141415;
color lblack = #48413A;
color brown = #985F19;
color orange = #FFB803;
color lorange = #C46B18;
color grey = #A09884;
color white = #FFFFFF;
color lwhite = #D6D5D4;
color dblue = #0D4BFF;
color lgrey = #6A6969;
color pink = #ED02D2;
color lred = #FF3636;
void setup() {

  size(350, 650);
  rectMode(CENTER);
  screenNumber = 0;
  bg = loadImage ("bg.jpg");
  bg1 = loadImage("bg.jpg");
  myGameObjects = new ArrayList<GameObject>();
  t = new Traffic[11];
  for (int i=0; i<11; i++) {
    t[i] = new Traffic();
    t[i].x = random(175, 200);
    t[i].y = 0;
    t[i].h = (int)random(7, 10);
    t[i].v = 0.01;
    t[i].show();
    t[i].energy();
  }
  t[1].x=random(80, 200);
  t[2].x=random(80, 200);
  t[3].x=random(80, 200);
  t[4].x=random(80, 200);
  t[5].x=random(80, 200);
  t[6].x=random(80, 200);
  t[7].x=random(80, 200);
  t[8].x=random(80, 200);
  t[9].x=random(80, 200);
  t[10].x=random(80, 200);
}

void draw () {
  background(black);
  car();
  move();
  for (int i=0; i<11; i++)
  {
    t[i].show();
    t[i].energy();
  }
}

void car () {
  image(bg, c, d);
  image(bg1, e, f);
  fill(116, 41, 131);
  rect(0, 300, 10, life);
  {
  }
  if (b<600) {
    println(d);
    f= f+1;
    d =d+1;
  }
  if (c>650) {
    c=0;
  }
  if (d >650) {
    d=-1300;
    d= d+1;
  }
  fill(32, 102, 125);
  rect(a, b, 10, 10);
  fill(green);
  rect(b1, a1, 20, 20);
  {
    a1=a1+5;
  }
  if (a1>650)
  {
    a1=0;
    b1=random(150, 250);
  }
  if (a<75) {
    a=a+5;
  }
  if (a>275) {
    println(a);
    a=a-5;
  }

  int i = 0;
  if (dist(a, b, b1, a1)<15) {
    background(250, 0, 0);
    println("gay");
    life=life-10;
    //while (i < 100) {
    //  myGameObjects.add(new Particle(location.x, location.y));
    //  i++;
    //}
  }
}
