int DVar1 = 2;

void GUI_setup () {
  line (width*6/16,height*14/16,width*15/16,height*14/16);
  line (width*5/16, 0, width*5/16, height);
  line (0, height*10/16, width, height*10/16);
  while (DVar1 < 10) {
    line (0, height*DVar1/16, width*5/16, height*DVar1/16);
    triangle(width*9/32,height*(DVar1/16+1/16),width*9/16,height*(DVar1/16+2/16),width*10/32,height*(DVar1/16+3/36));
    DVar1 = DVar1+2;
  }
  rect (width*6/16,height/16,width*9/16,height*8/16);//album cover space
  line (width*5/16,height*12/16,width,height*12/16);//next, prev, and pause/play button space
  line (width*8/16, height*10/16, width*8/16, height*12/16);
  line (width*13/16, height*10/16, width*13/16, height*12/16);
  strokeWeight(10);
  line (width*39/64, height*21/32, width*39/64, height*22/32);//pause/play button shapes
  line (width*40/64, height*21/32, width*40/64, height*22/32);
  line (width*41/64, height*22/32, width*42/64, height*21/32 );
  triangle (width*43/64, height*21/32, width*43/64, height*22/32, width*44/64, height*43/64);
  strokeWeight(1);
}
