void highlightDraw () {
  if (mouseX>width*8/16 && mouseX<width*13/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    stroke (123, 123, 123);//pause/play button highlight
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width*13/16, height*10/16, width*8/16, height*10/16);
    line (width*8/16, height*12/16, width*13/16, height*12/16);
  } else {
    stroke (0, 0, 0);
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width*8/16, height*12/16, width*13/16, height*12/16);
    line (width*8/16, height*10/16, width*13/16, height*10/16);
  } 
  if (mouseX>width*13/16 && mouseX<width && mouseY>height*10/16 && mouseY<height*12/16) {
    stroke (123, 123, 123);//next button highlight
    strokeWeight (3);
    line (width, height*10/16, width, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width*13/16, height*10/16, width, height*10/16);
    line (width, height*12/16, width*13/16, height*12/16);
  } else {
    stroke (0, 0, 0);
    strokeWeight (3);
    line (width, height*10/16, width, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width, height*12/16, width*13/16, height*12/16);
    line (width, height*10/16, width*13/16, height*10/16);
  } 
  if (mouseX>width*5/16 && mouseX<width*8/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    stroke (123, 123, 123);//prev button highlight
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*5/16, height*10/16, width*5/16, height*12/16);
    line (width*5/16, height*10/16, width*8/16, height*10/16);
    line (width*8/16, height*12/16, width*5/16, height*12/16);
  } else {
    stroke (0, 0, 0);
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*5/16, height*10/16, width*5/16, height*12/16);
    line (width*8/16, height*12/16, width*5/16, height*12/16);
    line (width*8/16, height*10/16, width*5/16, height*10/16);
  }
}
