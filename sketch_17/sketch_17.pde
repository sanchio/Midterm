// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

float[] xPositions = new float [500];
float[] yPositions = new float [500];
float s;

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = map(i, 0, 500, 0, width);
    yPositions[i] = map(i, 0, 500, 0, height);
  }
}

void draw() {
  background(0);
  for( int i = 0; i< xPositions.length; i++) {
  fill(map(i, 0, 255, 100, 255),255,100);
  noStroke();
    rect(xPositions[i], yPositions[i], s , s);
    xPositions[i] += random(-100,100);
    s = random(-10, 10);
}

  }
