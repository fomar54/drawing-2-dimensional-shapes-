void quitButtonDraw(){
//Display Orientation Feedback, works better if feedback to CANVAS
  // Will need to rerun the appWidth & appHeight code here
  //(separate void, 2nd reason to create subprograms is "copy and paste lines of code")
  //
  //Hover-Over effect
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = blue ; 
  } else {
    buttonColour = red;
  }//End Hover-Over Effect
  //

 //
//Alternate verification that mouseX&Y is on the button
  println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  
 //
  fill(buttonColour);
  rect ( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill (resetWhite);
  textFont(buttonFont,23);
   text(buttonText1,quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  
}
//End of quitButtonDraw 
