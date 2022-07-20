//Global Variable
PImage pic1, pic2;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float picWidthAdjusted2, picHeightAdjusted2;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
Boolean widthLarger1=false, heightLarger1=false;
Boolean widthLarger2=false, heightLarger2=false;
//
//
void setup() {
  //CANVAS
  size (750, 500); //Landscape
  //
  populatingVariables();
  //
  imageDraw();
  //
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
  rect(0, 0, width, height);
}//End keyPressed
//
void mousePressed() {
  imageDraw();
}//End mousePressed
//
//End MAIN Program


//
