//colors
//background color
color c1 = color(50, 50, 50);
//geometry stroke color
color c2 = color(300, 100, 100);


//easing
float x;
float y;
float px;
float py;
float easing = 0.1;

void setup() {
  size (800, 800);
  background (c1);
}


void draw() {

  //easing
  float targetX = mouseX;
  x += (targetX -x)* easing;
  float targetY = mouseY;
  y += (targetY - y)* easing;

  //triangle shape
  noFill();
  stroke(c2, 40);
  strokeWeight(1);

  translate (width/2, height/2);
  float angle=PI/24;

  if (mousePressed== true) {
    for (int i=0; i<=48; i++) {
      triangle(0, -width/3, (mouseX-width/2), (mouseY-height/2), 0, width/3);
      rotate(angle);
    }
  }
}

int number = 1;

//clear canvas
void keyPressed() {
  if (key == ' ') {
    background(c1);
  }

  //change color
  if (key == '1') {
    c2= color (random(0, 255), random(0, 255), random(0, 255));
  }

  //save frame
  if (key == 's') {
    println("Saving...");
    String s = "screen" + nf(number, 4) +".jpg";
    save(s);
    number++;
    println("Done saving.");
  }
}