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
  textFont(buttonFont,5);
   text(buttonText1,quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);

  quitButtonDraw();
  MesalesDraw();
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();

 /*//Measle
 
  measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25); //Range of measle size: small=*1/100, large=4xbigger (*1/25)
  measleRadius = measleDiameter*1/2;
  measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ) );
  measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius ) );
  nightMode=false; //Note: IF-ELSE similar to ternary operator
  measleColour = ( nightMode==false ) ? color( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ) ; //ternary operator for day:night
  whiteReset=#FFFFFF;
  //
  measleRectX = measleX-measleDiameter*1/2;
  measleRectY = measleY-measleDiameter*1/2;
  measleWidth = measleDiameter;
  measleHeight = measleDiameter;
  rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
  //Left Eye
  rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(imageWidth,imageHeight);
  image(pic, imageX, imageY, imageWidth, imageHeight);

  //
  //Nose
 rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
  //Mouth
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  rect(mouthX1, mouthY1, mouthWidth, mouthHeight); 
  //

//
*/
 }//End draw
void keyPressed() {
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board is separated on key-variables: key & keyCode
  //
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//

//End Main Program
