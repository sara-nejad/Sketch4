//Sketch 4 by Sara Nejad
//move mouse along x axis to control glitch
//press mouse to see other word


//variables 
PImage RBG;
PFont f;


void setup() {
  RBG = loadImage("RBG.jpg"); 
  size(1600, 900);
  frameRate(10);
  
  f = createFont("AbrilFatface-Regular.ttf", 300);
  textFont(f);
  

}

void draw() {
  alpha(30);
  image(RBG, 0,0);
  loadPixels();
  RBG.loadPixels();
  for(int x = 0; x< width; x++)  {
    for(int y = 0; y< height; y++)  {
    int loc = x+y*width;
    float r = red(RBG.pixels[loc]);
    float d= dist(mouseX, mouseY, x,y);
    float factor = map(d, 0, 200, 0, 2);
    pixels[loc] = color (r*factor, 100,100);
    pixels[loc] = RBG.pixels[loc];
    

  }
}
updatePixels();

 for(int i = 0; i <100; i++)  {
  float x = random(width);
  float y = random(height);
  color c = RBG.get(int(x), int(y));
  fill(c, random(150));
  noStroke();
  rect(x,y,random(mouseX), random(20));
 }

text("RESPECT", 50, height/2);

    
}

void mousePressed()  {
  
  float w = random(width);
  float h = random(height); 
  
  scale(random(1.2));
  text("WOMEN", w,h );
  
  h++;
 
  
}
