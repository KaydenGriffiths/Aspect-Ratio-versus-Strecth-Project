//Global Variables 
PImage soggyCat;
float topX, topY, topWidth, topHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
boolean nightMode=false;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
int appWidth, appHeight;
int tintDayMode=255, tintDayModeOpacity=50, tintNightModeOpacity=85;//Day/night mode tints
int tintRed=64, tintGreen=64, tintBlue=40;//RGB tints
void setup() {
  //Declaring Display Geometry: landscape, square, potrait
  size(800, 600); //Able to deploy with fullscreen();      
  appWidth = width;
  appHeight = height;
  //
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "height:"+displayHeight);
  //
  if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor display} else {
    appWidth=0;
    appHeight=0;
    println("STOP, is broken");
  } else {
    //Empty ELSE
  }
  //
  //Population
  soggyCat = loadImage("../Images Used/Portrait/Soggy-Cat.jpg");
  topX = appWidth * 1/4;
  topY = appHeight * 1/20;
  topWidth = appWidth * 1/2;
  topHeight = appHeight * 13/20;
  bottomX = appWidth *1/2;
  bottomY = appHeight * 3/4;
  bottomWidth = appWidth * 1/4;
  bottomHeight = appHeight * 4/20;
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  int picWidth = 100;
  int picHeight = 125;
  //
  //fits for two images
  rect( topX, topY, topWidth, topHeight );
  rect( bottomX, bottomY, bottomWidth, bottomHeight );
}
//End setup

void draw() {
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {  
  if ( mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(64, 64, 40, 85); //RGB: Night Mode
    image( soggyCat, backgroundImageX, backgroundImageY);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(soggyCat, backgroundImageX, backgroundImageY);
  }
}//End mousePressed
