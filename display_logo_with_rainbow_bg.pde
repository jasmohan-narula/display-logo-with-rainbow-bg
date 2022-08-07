PImage img;  // Declare variable "a" of type PImage

void setup() {
  System.out.println("Logo sketch starting...");
  
  fullScreen(1);
  //size(480,320);
  System.out.println("Width of screen is: " + width + " and height is: " + height);
  
  background(255);
  smooth(2);
  frameRate(60);
  noStroke();
  colorMode(HSB);
  
  // The image file must be in the root folder of the current sketch 
  // to load successfully
  img = loadImage("logo.png");  // Load the image into the program
}

float angle;
float jitter;
float bg_color;

void draw() {
  
  //Draw Background - Rainbow
  if (bg_color >= 255)
    bg_color=0;
  else
    bg_color++;
  background(bg_color, 255, 255);
  
  // Set translation of image
  translate(width/2, height/2);
  imageMode(CENTER);
  
  // Jitter and Rotate
  // during even-numbered seconds (0, 2, 4, 6...)
  if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  rotate(c);
  
  // Display the image at center with size smaller than the width
  image(img, 0, 0, width/2, width/2);
}
