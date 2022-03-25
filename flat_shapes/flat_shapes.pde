//Global Variables
int smallerDisplayDimension:
float rectFaceX, rectFaceY, rectFaceWidth,rectFaceHeight;
float faceX,faceY,faceDiameter;
//
//Display Geomtrey 
fullScreen(); displayWidth,displayHeight
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
faceDiameter = width;
rectFaceX =width*0 ;
rectFaceY =height*0 ;
rectFaceWidth = smallerDisplayDimension;//Square Shape
rectFaceHeight =smallerDisplayDimension ;//Square Shape
//

//Face: Circle = Iscribing a Circle in a Sqaure
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth,rectFaceHeight);
ellipse(faceX,faceY,faceDiameter,faceDiameter);

//
//Left Eye
//rect();
//
//Right Eye
//rect();
//
//Nose
//rect();
//
//Mouth
//rect();
//
//Measle
//rect();
