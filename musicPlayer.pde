import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
int numberOfSongs = 1;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];


int SNumber = 0;
float songLength = 60;
float songLengthDone = 30;
color playButtonColor = 0;

void setup() {
  size (1200, 800);
  GUI_setup();
  minim = new Minim(this);
  song[0] = minim.loadFile("Powerup.mp3");
}
void draw() {
  quitButtonDraw();
  text (songLengthDone, width*6/16, height*27/32);
  text (songLength, width*15/16, height*27/32);
    if (mouseX>width*8/16 && mouseX<width*13/16 && mouseY>height*10/16 && mouseY<height*12/16) {
     stroke (123,123,123);
     strokeWeight (3);
     line (width*8/16,height*10/16,width*8/16,height*12/16);
     line (width*13/16,height*10/16,width*13/16,height*12/16);
     line (width*13/16,height*10/16,width*8/16,height*10/16);
     line (width*8/16,height*12/16,width*13/16,height*12/16);
    }else{
     stroke (0,0,0);
     strokeWeight (3);
     line (width*8/16,height*10/16,width*8/16,height*12/16);
     line (width*13/16,height*10/16,width*13/16,height*12/16);
     line (width*8/16,height*12/16,width*13/16,height*12/16);
     line (width*8/16,height*10/16,width*13/16,height*10/16);
    }
    stroke (0,0,0);
    strokeWeight(1);
  /* if (SNumber == 0) {
   //repeat playing nothing / silence
   } else {
   //read SNumber and play corosponding song from list
   }
   */
  //float PercentLength = (songLengthDone/songLength);
  //text(PercentLength,width/2,height*14/16); 
  line (width*6/16, height*14/16, width*15/16, height*14/16);
  //strokeWeight(5);
  //line (width*6/16,height*14/16, (PercentLength)*width + width*6/16,height*14/16);
}

void keyPressed() {
}

void mouseClicked() {
  if (mouseX>width*14/16 && mouseY<height/16) {//quit buttton
    quitClick();
  }
  int currentSong = 0;
  if (mouseX>width*8/16 && mouseX<width*13/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
