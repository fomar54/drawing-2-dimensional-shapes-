//Global Variables
int smallerDisplayDimension,mouthOpen,reset;
float rectFaceX, rectFaceY, rectFaceWidth,rectFaceHeight;
float faceX,faceY,faceDiameter;
float leftEyeX,leftEyeY,eyeDiameter,rightEyeX,rightEyeY;
float mouthX1,mouthY1,mouthX2,mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;

//
//Display Geomtrey 
fullScreen(); 
int appWidth = width, appHeight = height; //Swap with displayWidth, displayHeight for testing
println (width, height, displayWidth, displayHeight); //Verification of values
println(appWidth, appHeight); //Canvas Flexibility
//
//Display Orientation
//Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio calculations)
//Computer Tells us the orientation, important for Cell Phone Orientation
//-tell user specific orientation
//if ( appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
println(DO, orientation); //Verification of value
if ( orientation==p ) println(instruct);
//With Strings, easier to print to console or canvas
/*
if ( orientation=="Landscape or Square" ) {
  //Empty IF
} else { 
  println("Turn your phun"); //FUN
}
*/
//
//Variable Population
smallerDisplayDimension =appHeight ;//ALWAYS in Landscape
reset = smallerDisplayDimension/smallerDisplayDimension;// returns "1"
faceX = appWidth*1/2;
faceY = height*1/2;
faceDiameter = smallerDisplayDimension;
rectFaceX =(appWidth*1/2)-(smallerDisplayDimension*1/2) ;
rectFaceY =height*0 ;
rectFaceWidth = smallerDisplayDimension;//Square Shape
rectFaceHeight =smallerDisplayDimension ;//Square Shape

leftEyeX =appWidth*1.5/4 ;
rightEyeX = appWidth*2.6/4;
leftEyeY=appHeight*1/4 ;
rightEyeY=leftEyeY ;//Best Practice change one line of code 
eyeDiameter = smallerDisplayDimension*1/4 ;
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
//

//Face: Circle = Iscribing a Circle in a Sqaure
//Center a circle on display orientation
//rect(rectFaceX, rectFaceY, rectFaceWidth,rectFaceHeight);
ellipse(faceX,faceY,faceDiameter,faceDiameter);

//
//Left Eye
//rect();
ellipse(leftEyeX,leftEyeY,eyeDiameter,eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX,rightEyeY,eyeDiameter,eyeDiameter);

//
//Nose
//rect();
triangle(xNose1,yNose1,xNose2,yNose2,xNose3,yNose3);
//
//Mouth
strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset); //

//
//Measle
float measleDiameter = smallerDisplayDimension*1/100
float measleRadius = measleDiameter*1/2;

float measleX = appWidth;
float measleY = random( rectFaceX+=measleRadius);
color red=#FF0000, measleColour=red,whiteReset=#000000; //Note: need range here too
//rect();
//random values given other variables (similar to button code)
noStroke();//S
fill(measleColour);
ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
stroke(reset);//reset to 1 pixel
fill(whiteReset);
