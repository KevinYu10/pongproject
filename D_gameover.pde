void gameover() {
  
  fill(0);
  textSize(75);
  text("Gameover", 250, 250);
  
  if (leftscore > rightscore) {
    fill(0);
    textSize(50);
    text("Left wins", 320, 350);
  } else {
    fill(0);
    textSize(50);
    text("Right wins", 300, 350);
  }
  
  gameovertactile();
  fill(255);
  rect(650, 650, 100, 70);
  fill(0);
  strokeWeight(0);
  textSize(40);
  text("Exit", 670, 695);
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    mode = INTRO;
  }
  
  if (mouseX > 650 && mouseX < 750 && mouseY > 650 && mouseY < 720) {
    exit();
  }
}

void gameovertactile() {
  if (mouseX > 650 && mouseX < 750 && mouseY > 650 && mouseY < 720) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
}
