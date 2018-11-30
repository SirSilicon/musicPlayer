int DVar1 = 0;

void GUI_setup () {
  line (width*6/16, height*14/16, width*15/16, height*14/16);
  line (width*5/16, 0, width*5/16, height);
  line (0, height*10/16, width, height*10/16);
  while (DVar1 < 10) { //song list
    text ("song name",width*1/16,height*(DVar1+1.5)/16);
    line (0, height*DVar1/16, width*5/16, height*DVar1/16);
    triangle(width*9/32, height*(DVar1+1)/16, width*9/32, height*(DVar1+2)/16, width*10/32, height*(DVar1+1.5)/16);
    DVar1 = DVar1+2;
  }
  rect (width*6/16, height/16, width*9/16, height*8/16);//album cover space
  line (width*5/16, height*12/16, width, height*12/16);//next, prev, and pause/play button space
  line (width*8/16, height*10/16, width*8/16, height*12/16);
  line (width*13/16, height*10/16, width*13/16, height*12/16);

  line (width/32, height*15/16, width*9/32, height*15/16);//audiograph

  strokeWeight(10);
  line (width*39/64, height*21/32, width*39/64, height*22/32);//pause/play button shapes
  line (width*40/64, height*21/32, width*40/64, height*22/32);
  line (width*41/64, height*22/32, width*42/64, height*21/32);
  strokeWeight(1);
  triangle (width*43/64, height*20.7/32, width*43/64, height*22.2/32, width*44.5/64, height*43/64);

  strokeWeight(10);
  line (width*25/64, height*21/32, width*25/64, height*22/32); //prev song button shapes
  strokeWeight(1);
  triangle (width*27/64, height*20.7/32, width*25.5/64, height*21.5/32, width*27/64, height*22.3/32);

  strokeWeight(10);
  line (width*59/64, height*21/32, width*59/64, height*22/32); //next song button shapes
  strokeWeight(1);
  triangle (width*57/64, height*20.7/32, width*58.5/64, height*21.5/32, width*57/64, height*22.3/32);

  strokeWeight(1);
}
