PImage sailboat1;
PImage sailboat2;

void intro() {
  sailboat1= loadImage("sailboat1.png") ;
  sailboat2= loadImage("sailboat2.png") ;
  background (lightblue);
  fill ( navy ); 
  rect ( 150, 400, 200, 125);
  rect ( 410, 400, 200, 125);

  theme. play();

  textSize(200);
  fill(255);
  textAlign(CENTER, CENTER);
  text ("PONG", 400, 200);

  image(sailboat1, 100, 300, 250, 250);
  image(sailboat2, 400, 300, 250, 250) ;
  textSize(30);
  text("1Player", 200, 550);
  text("2Players", 600, 550);
}


void introClicks() {
  if (mouseX >150 && mouseX < 350 && mouseY > 400 && mouseY <525) {
    mode = GAME;
    //intro. pause();
    //intro. rewind();
    AI = true;
  }
  if (mouseX > 400 && mouseX < 600&& mouseY> 400 && mouseX < 525) {
    mode = GAME;
    AI = false;
  } //???????????????????????????????????????????????????
}
