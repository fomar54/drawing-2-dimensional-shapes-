//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
float measleDiameter, measleRadius, measleX, measleY;
Boolean nightMode=false;
color measleColour, whiteReset;
float measleRectX, measleRectY, measleWidth, measleHeight;
String title = " what measals look like on a face";
float titleX,titleY, titleWidth, titleHeight;
PFont titlefont;
color black=#150C0C, restDefaultlink=#FAFBFF,white=#D3D1D1;
float imageX, imageY, imageWidth, imageHeight,imageHeightRatio=1.0,imageWidthtRatio=1.0;
float smallerDimension,LargerDimension;
PImage pic;
Boolean heightLarger  = false,widthLarger = false;

//
void setup()
{
    fullScreen();
 displaySetup();
 
 
//Variable Population: notice using appWidth & appHeight to move between size() & fullScreen()
  smallerDisplayDimension = appHeight; //ALWAYS in Landscape
  reset = smallerDisplayDimension / smallerDisplayDimension; //returns "1"
  rectFaceX = (appWidth*1/2) - (smallerDisplayDimension*1/2);
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerDisplayDimension; //Square Shape
  rectFaceHeight = smallerDisplayDimension; //Square Shape
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDisplayDimension;
  leftEyeX = appWidth*1.4/4;
  rightEyeX = appWidth*2.6/4;
  leftEyeY = appHeight*1/4;
  rightEyeY = leftEyeY; //Best Practice: change one line of code
  eyeDiameter = smallerDisplayDimension*1/4;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimension*1/4;
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY ;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY ;
  imageX =  appWidth*1.5/4 ;
imageY =appHeight*1/4  ;
imageWidth =appWidth*1.5/4 ;
imageHeight = appHeight*1/4 ;
if(imageWidth>width)println("EROR:image is too wide ");
if(imageHeight>height)println("EROR:image is too high ");
titleX = width*1/5;
titleY = height*1/10;
titleWidth = displayWidth*3/5; // Rect ends at 4/5's of the width
titleHeight = displayHeight*1/10;// ect ends at 2/10's of height 
  pic = loadImage ("Human_eye_with_blood_vessels.jpeg");////Find the larger dimenstion for aspect ratio
int picWidth =1920 ;
int picHeight = 1280;
if (  picWidth>=picHeight){
LargerDimension = picWidth ;
smallerDimension = picHeight;
heightLarger = true;
  //
  //Face: Circle = Inscribing a Circle in a Square
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
  }else{
 LargerDimension = picHeight;
smallerDimension =  picWidth;
widthLarger = true;
}
println(smallerDimension, LargerDimension, widthLarger,heightLarger);
if(widthLarger  == true)imageWidthtRatio =  (smallerDimension /LargerDimension );
if(widthLarger  == true)imageHeightRatio =  (LargerDimension /LargerDimension );
if(heightLarger  == true)imageWidthtRatio = (smallerDimension /LargerDimension );
if(heightLarger  == true)imageHeightRatio =  (LargerDimension /LargerDimension );
//Ratio 1.0 simalir to style = "width:auto"(website)
//Ratio 0.75similar to syle = height:auto (website)
 
   
}//End setup
//
void draw()
{
  //Measle
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
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
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
rect(titleX,titleY, titleWidth, titleHeight);
fill(white);//ink, hexidecmial copied from the color selector
textAlign(CENTER,CENTER);//Align X&Y, see processing.org/reference
//values:{[LEFT] [CENTER][RIGHT]&[TOP|CENTRE | BOTTOM|BASELINE}
textFont(titlefont,25);//change the number until it fits
text(title,titleX,titleY, titleWidth, titleHeight);
fill(restDefaultlink);
//Rectangle Layout
//rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
image(pic,imageX, imageY, imageWidth, imageHeight);
//
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
//
