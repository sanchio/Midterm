// this sketch uses only the setup function to draw 
// points at every pixel to the screen in a gradient 
// in the x and y dimensions. 

// the color should be smoothly blended in all directions 
// to look like the target image, but the current mapping 
// result seems to be off (its mostly yellow). 

// fix it to be an even gradient across the width and 
// height of the canvas.
//yellow = (255, 255, 100)

void setup() {
  size(600, 600);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, 255, 0, width/4);
      float g = map(j, 0, 255, 0, height/4);
      stroke(r, g, 155);
      point(i, j);
    }
  }
}
