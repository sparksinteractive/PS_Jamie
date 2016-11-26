//background color
color c1 = color(255, 255, 255);

//geometry stroke color
color c2 = color(100, 100, 100);

//mouse press fill color
color c3 = color(255, 255, 255);

//connector stroke color
color c4 = color(90, 190, 255);

//background
void setup() {
  size (900, 600);
  background (c1);
}

//two point triangle drawing

void draw() {
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

  //triangle lines
  triangle(0, 0, mouseX, mouseY, 900, 600);
  triangle(900, 0, mouseX, mouseY, 0, 600);

  //connector line
  stroke(c4, 100);
  strokeWeight(2);
  line(mouseX, mouseY, pmouseX, pmouseY);


}

//clear canvas
void keyPressed() {
  background(c1);
}