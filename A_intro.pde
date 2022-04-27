void intro() {
  
  theme.play();
  
  imageMode(CORNER);
  image(introbackground, 0, 0, 800, 800);
  
  if (AI == true) {
    fill(255, 0, 0);
    strokeWeight(0);
    rect(95, 95, 210, 110);
  } else {
    fill(255, 0, 0);
    strokeWeight(0);
    rect(495, 95, 210, 110);
  }
  
  
  fill(255);
  introtactile();
  fill(255);
  rect(100, 600, 200, 100);
  introtactile2();
  fill(255);
  rect(500, 600, 200, 100);
  introtactile3();
  fill(255);
  rect(100, 100, 200, 100);
  introtactile4();
  fill(255);
  rect(500, 100, 200, 100);
  
  fill(0);
  textSize(50);
  text("game", 140, 660);
  text("option", 530, 660);
  textSize(40);
  text("One Player", 110, 160);
  text("Two Player", 510, 160);
  
}

void introClicks() {
  if(mouseX > 100 && mouseX < 300 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
    leftscore = 0;
    rightscore = 0;
    ballx = width/2;
    bally = height/2;
    ballvx = random(-5, 5);
    ballvy = random(-5, 5);
    lefty = height/2;
    righty = height/2;
  }
  if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
    mode = OPTION;
  }
  
  if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200) {
    AI = true;
  }
  if (mouseX > 500 && mouseX < 700 && mouseY > 100 && mouseY < 200) {
    AI = false;
  }
  
}

void introtactile() {
  if(mouseX > 100 && mouseX < 300 && mouseY > 600 && mouseY < 700) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(0);
  }
}

void introtactile2() {
  if(mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(0);
  }
}

void introtactile3() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(0);
  }
}

void introtactile4() {
  if (mouseX > 500 && mouseX < 700 && mouseY > 100 && mouseY < 200) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(0);
  }
}
