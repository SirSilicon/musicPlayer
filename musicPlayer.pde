int SNumber = 0;
void setup() {
  size (1200, 800);
  GUI_setup();
}
void draw() {
  quitButtonDraw();
  if (SNumber == 0) {
    //repeat playing nothing / silence
  } else {
    //read SNumber and play corosponding song from list
  }
  //float songLength = 60;
  //float songLengthDone = 30;
  //float PercentLength = (songLengthDone/songLength);
  //text(PercentLength,width/2,height*14/16); 
  line (width*6/16,height*14/16,width*15/16,height*14/16);
  //strokeWeight(5);
  //line (width*6/16,height*14/16, (PercentLength)*width + width*6/16,height*14/16);

}

void mouseClicked(){
  quitClick();
}
