color white = #ffffff;
color DeepBlue = #0016e0;
color nonHover = DeepBlue;
color Hover = white;
PFont quitFont;
color goldenBrown = #EDC600;
void quitButtonSetup() {
}

void quitButtonDraw () {
  strokeWeight(1);
  quitFont = createFont ("Onyx", 150);
  if (mouseX>width*14/16 && mouseY<height/16) {
    fill(Hover);
    rect(width*14/16, 0, width, height/16);
    fill(goldenBrown);
    textAlign(CENTER, BOTTOM);
    textFont(quitFont, 45);
    text("quit", width*15/16, height/16);
  } else {
    fill(nonHover);
    rect(width*14/16, 0, width, height/16);
    fill(Hover);
    fill(goldenBrown);
    textAlign(CENTER, BOTTOM);
    textFont(titleFont, 45);
    text("quit", width*15/16, height/16);
  }
}

void quitClick() {
  if (mouseX>width*14/16 && mouseY<height/16) {
    exit();
  }
}
