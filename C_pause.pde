void pause() {
  
  pausetactile2();
  //exit button
  stroke(0);
  strokeWeight(0);
  exittactile();
  fill(255);
  rect(20, 20, 50, 30);
  strokeWeight(0);
  fill(0);
  triangle(30, 35, 40, 45, 40, 25);
  rect(35, 30, 20, 10);
  
  pausetactile();
  image(pausebackground, 375, 0, 50, 50);
}

void pauseClicks() {
  if (mouseX > 375 && mouseX < 415 && mouseY > 0 && mouseY < 50) {
    mode = GAME;
  }
  
  if (mouseX > 20 && mouseX < 70 && mouseY > 20 && mouseY < 50) {
    mode = INTRO;
  }
}

void pausetactile() {
  if (mouseX > 375 && mouseX < 415 && mouseY > 0 && mouseY < 50) {
    stroke(0);
    strokeWeight(5);
    line(375, 0, 425, 0);
    line(375, 0, 375, 50);
    line(375, 50, 425, 50);
    line(425, 0, 425, 50);
  } else {
    strokeWeight(0);
  }
}

void pausetactile2() {
  if (mouseX > 20 && mouseX < 70 && mouseY > 20 && mouseY < 50) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
}
