int spacing=20; //spacing between lines
int colour1,colour2,colour3,colour4; //colour variables to change the colours of the lines

void setup() {
  size(600,600); //size of the run window
  background(255); //white background colour
  noLoop(); //only allows draw to execute the code once
}

void draw() {
  colour1=0; //black colour variable for the top left section of the top left corner
  colour2=#C41606; //red colour variable for the bottom right section of the top left corner
  colour3=0; //black colour variable for the bottom left section of the top left corner
  colour4=0; //black colour variable for the top right section of the top left corner
  lines(); //draws the lines in the top left corner
  pushMatrix(); //stores the coordinates of lines
  translate(width/2,0); //moves the lines coordinates to the top right corner
  colour2=0; //black colour variable for the bottom right section of the top right corner
  colour3=#C41606; //red colour variable for the bottom left section of the top right corner
  lines(); //draws the lines in the top right corner
  popMatrix(); //restores the coordinates of lines
  pushMatrix(); //stores the coordinates of lines
  translate(0,height/2); //moves the lines coordinates to the bottom left corner
  colour3=0; //black colour variable for the bottom left section of the bottom left corner
  colour4=#C41606; //red colour variable for the top right section of the bottom left corner
  lines(); //draws the lines in the bottom left corner
  popMatrix(); //restores the coordinates of lines
  pushMatrix(); //stores the coordinates of lines
  translate(width/2,height/2); //moves the lines coordinates to the bottom right corner
  colour4=0; //black colour variable for the top right section of the bottom right corner
  colour1=#C41606; //red colour variable for the top left section of the bottom right corner
  lines(); //draws the lines in the bottom right corner
  popMatrix(); //restores the coordinates of lines
}
  
  void lines() {
  for(int x=0;x<width/2;) { //x variable has an initial value of 0 and must be less than half the width of the run window
    for(int y=height/2;y>0;) { //y variable has an initial value of half the height of the run window and must be greater than 0
      x+=spacing; //spacing between each coordinate
      y-=spacing; //spacing between each coordinate
      stroke(colour1); //colour variable for the lines in the top left corner
      line(0,x,y,0); //draws the lines in the top left corner
    }
  }
  for(int x=width/2;x>0;) { //x variable has an initial value of half the width of the run window and must be greater than 0
    for(int y=0;y<height/2;) { //y variable has an initial value of 0 and must be less than half the height of the run window
      x-=spacing; //spacing between each coordinate
      y+=spacing; //spacing between each coordinate
      stroke(colour2); //colour variable for the lines in the bottom right corner
      line(x,width/2,height/2,y); //draws the lines in the bottom right corner
    }
  }
  for(int x=width/2;x>0;) { //x variable has an initial value of half the width of the run window and must be greater than 0
    for(int y=height/2;y>0;) { //y variable has an initial value of half the height of the run window and must be greater than 0
      x-=spacing; //spacing between each coordinate
      y-=spacing; //spacing between each coordinate
      stroke(colour3); //colour variable for the lines in the bottom left corner
      line(x,width/2,0,y); //draws the lines in the bottom left corner
    }
  }
  for(int x=0;x<width/2;) { //x variable has an initial value of 0 and must be less than half the width of the run window
    for(int y=0;y<height/2;) { //y variable has an initial value of 0 and must be less than half the height of the run window
      x+=spacing; //spacing between each coordinate
      y+=spacing; //spacing between each coordinate
      stroke(colour4); //colour variable for the lines in the top right corner
      line(x,0,height/2,y); //draws the lines in the top right corner
    }
  }
}
