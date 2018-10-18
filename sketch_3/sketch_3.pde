// this sketch has the ellipse change colors 
// whenever the mouse button is pressed. 

// change the sketch so that the ellipse only changes 
// colors when the mouse is pressed INSIDE the ellipse.
int x = 255;
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  if (mouseX>width/2-100 && mouseX<width/2+100 && mouseY>height/2-100 & mouseY<height/2+100 && mousePressed) {
    fill(x);
  } else {
    fill(x - 105);
  }

  
  ellipse(width/2, height/2, 200, 200);
}

void mousePressed() {
 if (mouseX > width/2 + 200) {
   x = 150;
 } else {
   x = 255;
  
}
}
