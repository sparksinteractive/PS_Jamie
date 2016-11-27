//colors
//background color
color c1 = color(100, 100, 100);
//geometry stroke color
color c2 = color(215, 255, 175);
//geometry fill color
color c3 = color(75, 200, 255);
//connector stroke color
color c4 = color(255, 0, 0);

//easing
float x;
float y;
float px;
float py;
float easing = 0.1;


//setup - background color
void setup() {
  size (1200, 900);
  background (c1);
}


//four point four triangle drawing
void draw() {

  //easing
  float targetX = mouseX;
  x += (targetX -x) * easing;
  float targetY = mouseY;
  y += (targetY - y)* easing;

  //triangle shape
  //noFill();
  //stroke(c2, 50);
  //strokeWeight(1);
  //noStroke();
  //fill(c2,10);

  //mouse press state triangle fill
  if (mousePressed== true) {
    //noStroke();
    fill(c3, 2);
    //noFill();
    stroke(c2, 50);
    strokeWeight(1);
    //interior triangles with square
    //triangle(350, 200, x, y, 850, 700);
    //triangle(850, 200, x, y, 350, 700);
    //four corners triangles
    triangle(0, 0, x, y, 950, 650);
    triangle(1200, 0, x, y, 250, 650);
    triangle(1200, 900, x, y, 250, 250);
    triangle(0, 900, x, y, 950, 250);


    //connector line
    //stroke(c4, 100);
    //strokeWeight(2);
    //line(x, y, px, py);
    py = y;
    px = x;
  }
}

int number = 1;

//key commands
void keyPressed() {
  //clear canvas
if (key == ' '){
  background(c1);
}
//save farm
  if(key == 's'){
    println("Saving...");
    String s = "screen" + nf(number,4) +".jpg";
    save(s);
    number++;
    println("Done saving.");
  }
}