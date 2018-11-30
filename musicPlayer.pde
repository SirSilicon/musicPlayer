int SNumber = 0;
float songLength = 60;
float songLengthDone = 30;
void setup() {
  size (1200, 800);
  GUI_setup();
}
void draw() {
  quitButtonDraw();
  text (songLengthDone,width*6/16,height*27/32);
  text (songLength,width*15/16,height*27/32);
  if (SNumber == 0) {
    //repeat playing nothing / silence
  } else {
    //read SNumber and play corosponding song from list
  }

  //float PercentLength = (songLengthDone/songLength);
  //text(PercentLength,width/2,height*14/16); 
  line (width*6/16,height*14/16,width*15/16,height*14/16);
  //strokeWeight(5);
  //line (width*6/16,height*14/16, (PercentLength)*width + width*6/16,height*14/16);

}

void mouseClicked(){
  quitClick();
}
