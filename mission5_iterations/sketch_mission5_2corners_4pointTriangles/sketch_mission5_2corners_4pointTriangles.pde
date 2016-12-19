//colors
//background color
color c1 = color(255, 255, 255);
//geometry stroke color
color c2 = color(100, 100, 100);
//mouse press fill color
color c3 = color(255, 255, 255);
//connector stroke color
color c4 = color(255, 0, 0);

/*
//easing 
float x;
float y;
float px;
float py;
float easing = 0.1;
*/

//float angle = 0.0;

//setup - background color
void setup() {
  size (800, 800);
  background (c1);
}


//four point four triangle drawing
void draw() {
 
translate (width/2, height/2);

  //triangle shape
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
  //rotate(angle);
  for (int i=0; i< 360; i+=10) {
  triangle(0, -300, mouseX, mouseY, 0, 300);
  //triangle(0, 600, mouseX, mouseY, 900, 0);
 //angle +=10;
 rotate(radians(i));

  }
  /*
  //connector line
  stroke(c4, 100);
  strokeWeight(2);
  line(x, y, px, py);
  py = y;
  px = x;


  //easing
  float targetX = mouseX;
  x += (targetX -x) * easing;
  float targetY = mouseY;
  y += (targetY - y)* easing;
  */
  
}

//clear canvas
void keyPressed() {
  background(c1);
}