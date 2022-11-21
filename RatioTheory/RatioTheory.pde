//Globabl Variables
int appWidth, appHeight;
float leftX, leftY, leftWidth, leftHeight;
float rightX, rightY, rightWidth, rightHeight;
//PImage soggyCat = loadImage("../Images used/Portrait/Soggy-Cat.jpg");
size(800, 600);
appWidth= width;
appHeight= height;
//image(soggyCat, 0, 0);
//soggyCat.resize(400, 300);
//image(soggyCat, 0, 0); 
//
//population right
leftX = appWidth * 1/8;
leftY = appHeight * 1/10;
leftWidth = appWidth * 1/4;
leftHeight = appHeight * 3/4;
rightX = appWidth * 5/8;
rightY = appHeight * 1/10;
rightWidth = appWidth * 1/4;
rightHeight = appHeight * 3/4;
//
rect( leftX, leftY, leftWidth, leftHeight );
rect( rightX, rightY, rightWidth, rightHeight );
line(0.5*appWidth, 0*appHeight, appWidth*0.5, appHeight);
