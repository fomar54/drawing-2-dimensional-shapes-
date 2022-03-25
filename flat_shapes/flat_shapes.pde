//Global Variables
int smallerDisplayDimension;
float rectFaceX, rectFaceY, rectFaceWidth,rectFaceHeight;
float faceX,faceY,faceDiameter;
float leftEyeX,leftEyeY,eyeDiameter,rightEyeX,rightEyeY;
float mouthX1,mouthY1,mouthX2,mouthY2;
//
//Display Geomtrey 
fullScreen(); 
println (width, height, displayWidth, displayHeight); //Verification of values
//Display Orientation: a few comparisons for IFs
//Computer Tells us the orientation, important for Cell Phone Orientation
//if ( width >= height ) {println("Landscape or Square");} else {println("Portrait");}
String orientation = ( width >= height ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
println("Display Orientation:", orientation); //Verify variables
if ( orientation=="Portrait" ) println("Turn your phun");
/*
if ( orientation=="Landscape or Square" ) {
  //Empty IF
} else { 
  println("Turn your phun"); //FUN
}
*/
//
//Variable Population
smallerDisplayDimension = height;//ALWAYS in Landscape
faceX = width*1/2;
faceY = height*1/2;
faceDiameter = smallerDisplayDimension;
rectFaceX =(width*1/2)-(smallerDisplayDimension*1/2) ;
rectFaceY =height*0 ;
rectFaceWidth = smallerDisplayDimension;//Square Shape
rectFaceHeight =smallerDisplayDimension ;//Square Shape

leftEyeX =width*1.5/4 ;
rightEyeX = width*2.6/4;
leftEyeY=height*1/4 ;
rightEyeY=leftEyeY ;//Best Practice change one line of code 
eyeDiameter = smallerDisplayDimension*1/4 ;
mouthX1 = leftEyeX;
mouthY1 = height*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
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
//
//Mouth
line(mouthX1,mouthY1,mouthX2,mouthY2);
//
//Measle
//rect();
