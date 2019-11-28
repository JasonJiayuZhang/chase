//boolean right, left, up;
boolean wkey, akey, dkey;

void keyPressed() {
  //if (keyCode == RIGHT ) right = true;
  //if (keyCode == LEFT)left = true;
  //if (keyCode == UP) up = true;
  if (key == 'w')  wkey = true;
  if (key == 'a') akey = true;
  if (key == 'd') dkey = true;
}

void keyReleased() {
  //if (keyCode == RIGHT ) right= false;
  //if (keyCode == LEFT)left=false;
  //if (keyCode == UP) up =false;
  if (key == 'w')  wkey = false;
  if (key == 'a') akey = false;
  if (key == 'd') dkey = false;
}

void move() {
  b+=1;
  if (dkey) a+=4;
  if (akey) a-=4;
  if (wkey) b-=4;
}
