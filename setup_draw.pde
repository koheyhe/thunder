void setup() {
  size(1920, 1080);
  minim = new Minim(this);
  player = minim.loadFile("thunder.mp3"); 
  w = width / 2;
  h = height / 2;
  squ[0] = 1;
}

void draw() {
  translate(w, h+180);
  rotate(radians(45));
  noStroke();
  if (isSta == 0) {
    background(0);
    for (int i = 0; i < x*y; i++) {
      if (squ[i] == 1) {
        fill(255);
      } else {
        fill(0);
      }
      rect((i%x-x/2)*s, (i/y-y/2)*s, s, s);
    }
  } else {
    for (int i = 0; i < x*y; i++) {
      fill(a[i]*255/v);
      rect((i%x-x/2)*s, (i/y-y/2)*s, s, s);
    }
  }
  /*fill(255, 0, 0);
   textSize(50);
   text(mouseX/s+mouseY/s*x, 100, 100);*/
}
