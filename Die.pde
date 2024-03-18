class Die {
  int faces;
  int current;
  int r, g, b, a, x, y;

  // constructor
  Die() {
    faces = 6;
    r = (int)(Math.random() * 255);
    g = (int)(Math.random() * 255);
    b = (int)(Math.random() * 255);
    a = 80;
    x = 10;
    y = 10;
    current = 0;
  }

  // roll the die
  int roll() {
    int retval;
    retval = (int)(Math.random() *6) +1;
    return retval;
  }

  // show the die
  void show() {
    System.out.println(current + " ");
  }
}
