void drawThu() {
  for (int j = 0; j < v; j++) {
    for (int i = 1; i < x*y; i++) {
      if (a[i] == j) {
        a[chr[i]] = j+1;
      }
    }
  }
}
