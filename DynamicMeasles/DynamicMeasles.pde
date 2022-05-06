//Global Variables
int reset, smallerDisplayDimension;
int appWidth, appHeight;
Boolean nightMode=false;
String title = " what measals look like on a face";
float titleX, titleY, titleWidth, titleHeight;
PFont titlefont;
color black=#150C0C, restDefaultlink=#FAFBFF, white=#D3D1D1;
float imageX, imageY, imageWidth, imageHeight, imageHeightRatio=1.0, imageWidthtRatio=1.0;
PFont buttonFont;
float largerDimension, smallerDimension;
PImage pic;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color buttonColour, blue=#907F7F, red=#9B9393, resetWhite;
Boolean heightLarger = false, widthLarger = false;
float eyeDiameter; 
String buttonText1= "Quit";


void setup(){
  fullScreen();
  //Display Geomtery
    faceSetup();
    println (width, height, displayWidth, displayHeight); //Verification of values
int appWidth = width, appHeight = height; //Swap with displayWidth, displayHeight for testing
  println (width, height, displayWidth, displayHeight); //Verification of values
  println(appWidth, appHeight); //Canvas Flexibility
 
   //
  int picWidth = 600; //NOTE: mine not yours
  int picHeight = 748; //NOTE: mine not yours
  
//if ( appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE

if ( picWidth >= picHeight ) {
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
  //Face: Circle = Inscribing a Circle in a Square
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  
 rect(titleX,titleY, titleWidth, titleHeight);

 populationSetup();

  //Ratio 1.0 simalir to style = "width:auto"(website)
  //Ratio 0.75similar to syle = height:auto (website)
  //Landscape, not portrait nor square
  String landscape = "ready";
  String portrait = "place your phone vertically ";
  String displayOrientation = ( width >= height ) ? landscape : portrait ;
  if ( displayOrientation==portrait )
  println ( displayOrientation ); 
  //Portrait Display Orientation
  if ( displayOrientation==landscape ) appWidth = displayWidth; 
 
  if ( displayOrientation==landscape ) appHeight = displayHeight; 
  println (appWidth, appHeight);

  int smallerDisplayDimension = appHeight;
  int canvasCenter = smallerDisplayDimension*1/2; //thinking experiment
  ;
  
  quitButtonX = appWidth* (11.0/15.0); //1/4 on one-half, 1/4 on other half
  quitButtonY =  appHeight*(13.0/15.0);
  quitButtonWidth = appWidth*(1.0/3.0)*(1.0/5.0);
 quitButtonHeight = appHeight*(1.0/3.0)*(1.0/5.0);
  buttonFont = createFont ("Serif", 55);
titlefont = createFont("Serif",55);

}//End setup

void draw()
{
  textFont(titlefont,25);
  text(title,titleX,titleY, titleWidth, titleHeight);
  
  quitButtonDraw();
 measleDraw();
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();


 }//End draw
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//

//End Main Program
