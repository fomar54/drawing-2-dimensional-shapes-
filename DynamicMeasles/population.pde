void populationSetup(){
//Variable Population: notice using appWidth & appHeight to move between size() & fullScreen()
  smallerDisplayDimension = appHeight; //ALWAYS in Landscape
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
if(imageWidth>width) println("EROR:image is too wide ");
if(imageHeight>height) println("EROR:image is too high ");
titleX = width*1/5;
titleY = height*1/10;
titleWidth = displayWidth*3/5; // Rect ends at 4/5's of the width
titleHeight = displayHeight*1/10;// ect ends at 2/10's of height 
  pic = loadImage ("Human_eye_with_blood_vessels.jpeg");////Find the larger dimenstion for aspect ratio
int picWidth =1920 ;
int picHeight = 1280;
if (  picWidth>=picHeight);
LargerDimension = picWidth ;
smallerDimension = picHeight;
 heightLarger = true;
 }

//End of populationSetup 
