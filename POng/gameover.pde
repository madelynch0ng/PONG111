PImage sinking; 

void gameover() {
  background(0);
  fill(light);
  stroke(light);
  rect(0, 0, 400, 600);
  fill ( blue);
  stroke(blue);
  rect( 400, 0, 800, 600);

  sinking = loadImage ("sinking.png");

  if (score1> score2) {
    image( sinking, 50, 200, 250, 250);
    image(sailboat2, 400, 300, 250, 250);
    fill(navy);
    text ( "YOU WIN!", 500, 100, 200, 300);
  } else {
    image( sinking, 450, 200, 250, 250);  
    image(sailboat1, 100, 300, 250, 250);
    fill(navy);
    textAlign(CENTER, CENTER);
    text ( "YOU WIN!", 90, 100, 100, 300);
  }

  fill(lightblue);
  textSize(50); 
  rect( 550, 400, 200, 100, 20);
  fill(navy);
  text("Quit", 650, 450);

  //return home
  fill(lightblue);
  rect(550, 520, 200, 50, 20);
  fill(navy);
  textSize(40);
  text("home", 680, 535);
  textSize(60);
}

void gameoverClicks() {
  if (mouseX > 550 && mouseX< 750 && mouseY > 350 && mouseY < 450) {
    exit();
  }
  if (mouseX > 550 && mouseX< 750 && mouseY > 520 && mouseY < 570) {
    mode=INTRO;
    theme.play();
  }
}
