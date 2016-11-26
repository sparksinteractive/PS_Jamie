//color setup
//background color
color c1 = color(255, 255, 255);
//geometry stroke color
color c2 = color(100, 100, 100);
//mouse press fill color
color c3 = color(255, 255, 255);
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
  size (900, 600);
  background (c1);
}


//two point triangle drawing
void draw() {
  
  //easing
  float targetX = mouseX;
  x += (targetX -x) * easing;
  float targetY = mouseY;
  y += (targetY - y)* easing;
  
    //triangle lines
  noFill();
  stroke(c2, 50);
  strokeWeight(1);
  //noStroke();
  //fill(c2,10);
  
    //mouse press state triangle fill
  if (mousePressed== true) {
    noStroke();
    fill(c3, 10);
  }

  triangle(0, 0, x, y, 750, 450);
  triangle(900, 0, x, y, 150, 450);
  triangle(900, 600, x, y, 150, 150);
  triangle(0, 600, x, y, 750, 150);
  

  //connector line
  stroke(c4, 100);
  strokeWeight(2);
  line(x, y, px, py);
  py = y;
  px = x;


}

//clear canvas
void keyPressed() {
  background(c1);
}