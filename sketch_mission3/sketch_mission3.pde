//Triangulated Repetition with Random BG

//colors
//background color
color c1 = color(100, 100, 100);
//geometry stroke color
color c2 = color(250, 50, 175);
//geometry fill color
color c3 = color(180, 75, 225);
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
  x += (targetX -x)* easing;
  float targetY = mouseY;
  y += (targetY - y)* easing;


  //mouse press state triangle fill
  if (mousePressed== true) {
    fill(c3, 2);
    stroke(c2, 50);
    strokeWeight(1);
    //four corners triangles
    for (int i= 0; i< width; i+= 20){
    triangle(i, 0, x, y, width/2, height);
    }

if (mouseY< height/2){
c1= color (random(0,255),random(0,255),random(0,255));
}

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
//save frame
  if(key == 's'){
    println("Saving...");
    String s = "screen" + nf(number,4) +".jpg";
    save(s);
    number++;
    println("Done saving.");
  }
}