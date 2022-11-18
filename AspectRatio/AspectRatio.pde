//Global Variables 
int appWidth, appHeight;
int tintDayMode=255, tintDayModeOpacity=50, tintNightModeOpacity=85;//Day/night mode tints
int tintRed=64, tintGreen=64, tintBlue=40;//RGB tints
void setup() {
  //Declaring Display Geometry: landscape, square, potrait
  size(800, 600); //Able to deploy with efullscreen();      
  appWidth = width;
  appHeight = height;
  //
  //Concatenation , -or- +
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "height:"+displayHeight);
  //
  String ls="landscapes or Square", p="potrait", DO="Display Orientation", instruct ="Breh, turn your phon";
  //
  if ( appWidth >= appHeight ) { //Declaring Landscape & Square 
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor display} else {
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
}//End setup

void draw() {
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}//End mousePressed
