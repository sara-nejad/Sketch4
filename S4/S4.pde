//Sketch 4 by Sara Nejad
//move mouse along x axis to control glitch
//press mouse to see other word

//--------------------------------------------------------

//variables 
PImage RBG;
PFont f;
color c;
float theta; 
//int fc;

//--------------------------------------------------------

void setup() {
  RBG = loadImage("RBG.jpg"); //load image "RBG"
  size(1600, 900); //set canvas size
  //fc = 200;
  
  f = createFont("AbrilFatface-Regular.ttf", 300); //create font f and set font size to 300
  textFont(f); //set text font equal to font f
  
}

//--------------------------------------------------------

void draw() {
  
  image(RBG, 0,0, 1600, 900); //get image titled RBG
  //alpha(30);
  
  loadPixels(); //load pixels
  RBG.loadPixels(); //load pixels of image RBG
  for(int x = 0; x < width; x++)  {  //go through all x and y values
    for(int y = 0; y < height; y++)  { 
    int loc = x+y*width; //set integer variable called loc equal to the product of y value and width and add it to the x value
    // float r = red(RBG.pixels[loc]); //set float variable r equal to the red value of each pixel in image RBG
    // float d= dist(mouseX, mouseY, x,y); //set float variable d equal to the distance between x location of mouse from x, and y location of mouse from y
    // float factor = map(d, 0, 500, 0, 2); //set the float value of float variable "factor" = take the value of d between 0, 500 and map it in between 0 and 2
    //pixels[loc] = color (r*factor, random(255),100); // 
    pixels[loc] = RBG.pixels[loc];
  }
}
updatePixels();

 
  //draw the image "RBG" using a loop with 
  for(int i = 0; i < 100; i++)  { //repeat the following process 100 times 
  float x = random(width); //set float x equal to a random value between 0 and canvas width
  float y = random(height); //set float y equal to a random value between 0 and canvas height 
  color c = RBG.get(int(x), int(y)); //set color variable c equal to x and y values of RBG pixels 
  //frameCount = fc;
  fill(c, random(150));//set fill color based on c and randomize opacity between 0 and 150
  noStroke();
  rect(x, y, random(mouseX)/5, random(15)); //rectangles with random x/y values, random width based on mouse X location and random height between 0 and 15
 }

  // display text
  float x1 = 50;
  float y1 = height/2;
  // float s = noise(1);
  //frameCount = fc;
  text("RESPECT", x1, y1); 
  
  //y1 = y1 + 1;
    
}



//--------------------------------------------------------

//display and rotate "women" when mouse is dragged  
void mouseDragged()  {
  
  pushMatrix();
  
  float w = random(width/3);
  float h = random(height); 
  
  scale(random(0.5, 2));
  fill(c, c, c, random(250));
  //size(150);
  rotate(theta);
  text("WOMEN", w, h);
  
  theta+= PI;
  w++;
  h--;
  
  popMatrix();
   
}
