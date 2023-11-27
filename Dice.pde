Die aDie;
int x, y;
int rows = 4;
int cols = 5;
int mult = 100;
int off = 50;
float wid = 75;
float hgt = 75;
float inc = .05;
int r, g, b, a;
int total = 0;
void setup() {
  size(600, 400);
  aDie = new Die();
  noLoop();
  r = (int)(Math.random() * 255);
  g = (int)(Math.random() * 255);
  b = (int)(Math.random() * 255);
  a = 80;
}

void draw() {
  total = 0;
  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      aDie.current = aDie.roll();
      total += aDie.current;
      aDie.show();
      drawit(x, y);
    }
  }
  System.out.println(total);
  textSize(16);
  fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  text("total "+total, 530, 300);
}

void drawit(float x, float y) {
  fill(r, g, b, a);
  rect(x * mult + off, y * mult + 10, wid, hgt);
  textSize(40);
  fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  text(aDie.current, x*mult+75, y*mult+50);
}


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
