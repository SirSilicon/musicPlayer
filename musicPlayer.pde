import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
int totalSongs = 5;
int songN = 0;
AudioPlayer[] song = new AudioPlayer[totalSongs];


int SNumber = 0;
float songLength = 60;
float songLengthDone = 30;
color playButtonColor = 0;

void setup() {
  size (1200, 800);
  GUI_setup();
  minim = new Minim(this);
  song[0] = minim.loadFile("Powerup.mp3");
  song[1] = minim.loadFile("Inevitable.mp3");
  song[2] = minim.loadFile("Motion_Sickness.mp3");
  song[3] = minim.loadFile("Nothin_Yet.mp3");
  song[4] = minim.loadFile("Databytez.mp3");
}
void draw() {
  background(songN*10);
  quitButtonDraw();
  text (songLengthDone, width*6/16, height*27/32);
  text (songLength, width*15/16, height*27/32);
  highlightDraw ();
  stroke (0, 0, 0);
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
  if (mouseX>width*8/16 && mouseX<width*13/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    if ( song[songN].position() == song[songN].length() ) {
      song[songN].rewind();
      song[songN].play();
    } else {
      if ( song[songN].isPlaying() ) {//start pause/play button code
        song[songN].pause();
      } else {
        song[songN].play();
      }
    }
    //end pause/play button code
    if (mouseX>width*13/16 && mouseX<width && mouseY>height*10/16 && mouseY<height*12/16) {
      if ( song[songN].isPlaying() && songN != totalSongs ) {
        song[songN].pause();//start next button code
        song[songN].rewind();
        songN = songN + 1;
        song[songN].play();
      }
      if ( !song[songN].isPlaying() && songN != totalSongs ) {
        song[songN].rewind();
        songN = songN + 1;
      } 
      if ( song[songN].isPlaying() && songN == totalSongs-1 ) {
        song[songN].pause();
        song[songN].rewind();
        songN = 0;
        song[songN].play();
      }
      if ( !song[songN].isPlaying() && songN == totalSongs -1 ) {
        song[songN].rewind();
        songN = 0;
      }
    }  
    if (mouseX>width*5/16 && mouseX<width*8/16 && mouseY>height*10/16 && mouseY<height*12/16) {
      if ( song[songN].isPlaying() && songN > 0 ) {
        song[songN].pause();//start prev button code
        song[songN].rewind();
        songN = songN - 1;
        song[songN].play();
      }
      if ( !song[songN].isPlaying() && songN > 0 ) {
        song[songN].rewind();
        songN = songN - 1;
      } 
      if ( song[songN].isPlaying() && songN <= 0 ) {
        song[songN].pause();
        song[songN].rewind();
        songN = totalSongs - 1;
        song[songN].play();
      }
      if ( !song[songN].isPlaying() && songN <= 0 ) {
        song[songN].rewind();
        songN = totalSongs - 1;
      }
    }//end prev button code
  }
}
