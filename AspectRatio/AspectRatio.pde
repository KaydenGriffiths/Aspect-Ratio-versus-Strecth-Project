//Global Variables 
PImage soggyCat, bgImage;
float leftX, leftY, leftWidth, leftHeight;
float rightX, rightY, rightWidth, rightHeight;
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
  bgImage = loadImage("../Images Used/Landscape/LOBSTER.jpg");
  leftX = appWidth * 1/8;
  leftY = appHeight * 1/10;
  leftWidth = appWidth * 1/4;
  leftHeight = appHeight * 3/4;
  rightX = appWidth * 5/8;
  rightY = appHeight * 1/10;
  rightWidth = appWidth * 1/4;
  rightHeight = appHeight * 3/4;
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  int picWidth = 100;
  int picHeight = 125;
  //
}
//End setup

void draw() {  
  //fits for two images: left and right squares for portrait scaling
  rect( leftX, leftY, leftWidth, leftHeight );//strecthed image box
  rect( rightX, rightY, rightWidth, rightHeight );//scaled image box 
  line(0.5*appWidth, 0*appHeight, appWidth*0.5, appHeight);//readjusting line
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {  
  if ( mouseButton == LEFT) {
    nightMode = true;
    tint(64, 64, 40, 85); //RGB: Night Mode
    image( bgImage, backgroundImageX, backgroundImageY);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image( bgImage, backgroundImageX, backgroundImageY);
  }
}//End mousePressed
