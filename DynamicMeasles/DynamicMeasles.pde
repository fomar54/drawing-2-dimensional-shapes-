//Global Variables
int appWidth, appHeight;
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
float measleDiameter, measleRadius, measleX, measleY;
Boolean nightMode=false;
color measleColour, whiteReset;
float measleRectX, measleRectY, measleWidth, measleHeight;
String title = " what measals look like on a face";
float titleX, titleY, titleWidth, titleHeight;
PFont titlefont;
color black=#150C0C, restDefaultlink=#FAFBFF, white=#D3D1D1;
float imageX, imageY, imageWidth, imageHeight, imageHeightRatio=1.0, imageWidthtRatio=1.0;
float smallerDimension, LargerDimension;
PImage pic;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color buttonColour, blue=#94CCDB, red=#B71414, resetWhite;
Boolean heightLarger  = false, widthLarger = false;

//
int largerDimension;
void setup(){
  fullScreen();
  //Display Geomtery
    println (width, height, displayWidth, displayHeight); //Verification of values

  int appWidth = displayWidth, appHeight = displayHeight; //Swap with displayWidth, displayHeight for testing
  println(appWidth, appHeight); //Canvas Flexibility
  //
  int picWidth = 600; //NOTE: mine not yours
  int picHeight = 748; //NOTE: mine not yours
  
//if ( appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE


  //Face: Circle = Inscribing a Circle in a Square
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  
 
 populationSetup();
if ( picWidth >= picHeight ) { //ID Larger Dimension: Landscape and Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //ID Larger Dimension: Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;
  } 

  println(smallerDimension, LargerDimension, widthLarger, heightLarger);

  if (widthLarger  == true)imageWidthtRatio =  (smallerDimension /LargerDimension );
  if (widthLarger  == true)imageHeightRatio =  (LargerDimension /LargerDimension );
  if (heightLarger  == true)imageWidthtRatio = (smallerDimension /LargerDimension );
  if (heightLarger  == true)imageHeightRatio =  (LargerDimension /LargerDimension );

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
  
  quitButtonX = (appWidth*1/2) - appWidth*1/8; //1/4 on one-half, 1/4 on other half
  quitButtonY = canvasCenter - appHeight*1/8;
  quitButtonWidth = appWidth*1/4;
 quitButtonHeight = appHeight*1/4;}
  



//End setup

void draw()
{
  quitButtonDraw();
  MesalesDraw();
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  tint(255,146);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter );
  image(pic, rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  //

//

  //Nose
  //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
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
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight); 
  //
  //layout or textspace and typograhical features
  rect(titleX, titleY, titleWidth, titleHeight);
  fill(white);//ink, hexidecmial copied from the color selector
  textAlign(CENTER, CENTER);//Align X&Y, see processing.org/reference
  //values:{[LEFT] [CENTER][RIGHT]&[TOP|CENTRE | BOTTOM|BASELINE}
  textFont(titlefont, 25);//change the number until it fits
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(restDefaultlink);
  //Rectangle Layout
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  image(pic, imageX, imageY, imageWidth, imageHeight);
}
//End draw
//

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
