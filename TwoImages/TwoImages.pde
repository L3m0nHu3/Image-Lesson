//Global Variable
float imageX1, imageY1, imageWidth1, imageHeight1;
float imageX2, imageY2, imageWidth2, imageHeight2;
//float imageLargerDimension, imageSmallerDimension;
PImage pic1, pic2;
//Boolean widthLarger=false, heightLarger=false;
//
void setup() {
  //CANVAS
  size (750, 500); //Landscape
  //
  //Population of Image
  pic1 = loadImage("/Users/danielhamilton/Documents/GitHub/Image-Lesson/Images Used/Landscape & Square Images/CoolLiminalSpace2.jpeg"); //Dimensions: width 800, height 600
  pic2 = loadImage("/Users/danielhamilton/Documents/GitHub/Image-Lesson/Images Used/Landscape & Square Images/CoolLiminalSpace.jpeg"); //Dimensions: width 640, height 853
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  //Alogrithm: Find the larger dimension for aspect ration (comparison of two numbers)
  int picWidth1 = 750;
  int picHeight = 750;
  int picWidth2 = 640;
  int picHeight2 = 853;
  
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //Note:
  //Answers must be 1.0 and between 0 & 1 (decimal)
  //Ratio 1.0 similar to style="width:100%" (websites)
  //Ratio of 0-1 similar to style="height:auto" (websites)
  //
  //Population of Rect()
  imageX1 = width*0;
  imageY1 = height*0;
  imageWidth1 = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imageHeight1 = height-1;
  //
  //Combination of Population of Image with Population of Rect()
  //Ajusted Image Variables for Apect Ratio: entire image will be smaller due to aspect ratio
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  println(imageX, imageY, picWidthAdjusted, picHeightAdjusted); //Note: println() also verifies decimal places, complier will truncate
  //
}//End setup
//
void draw() {
  rect(imageX1, imageY1, imageWidth1, imageHeight1); //Top half of CANVAS
  rect(imageX2, imageY2, imageWidth2, imageHeight2); //Bottom half of CANVAS
  //image(pic, imageX, imageY, imageWidth, imageHeight);
  image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
}//End draw
//
//void keyPressed() {}//End keyPressed
//
//void mousePressed() {}//End mousePressed
//
//End MAIN Program


//
