void keyPressed() {
  int p = 2;
  if (key == ' ') {
    for (int i = 0; i < x*y; i++) {
      if (squ[i] == 0) {
        if (i+1 < x*y && (i+1)/x == i/x && squ[i+1] == 1) {
          squ[i] = (int)random(p);
          chr[i] = i+1;
        } else if (i+x < x*y && (i+x)%x == i%x && squ[i+x] == 1) {
          squ[i] = (int)random(p);
          chr[i] = i+x;
        }
      }
    }
    for (int i = x*y-1; i >= 0; i--) {
      if (squ[i] == 0) {
        if (i-1 >= 0 && (i-1)/x == i/x && squ[i-1] == 1) {
          squ[i] = (int)random(p);
          chr[i] = i-1;
        } else if (i-x >= 0 && (i-x)%y == i%y && squ[i-x] == 1) {
          squ[i] = (int)random(p);
          chr[i] = i-x;
        }
      }
    }
  }
  if (key == ENTER) {
    drawThu();
    isSta = 1;
    player.play();
    player.rewind();
  }
}
