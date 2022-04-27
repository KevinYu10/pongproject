void game() {
    
  //background
  imageMode(CORNER);
  image(gamebackground, 0, 0, 800, 800);
  image(pausebackground2, 375, 0, 50, 50);
  image(restartbackground, 375, 70, 50, 50);
  gametactile();
  
  //score board
  fill(0);
  textSize(50);
  text("Left :" + leftscore, 140, 70);
  text("Right :" + rightscore, 540, 70);
  
  //scoring system
  //right side
  if (ballx <= balld/2) {
    coin.rewind();
    coin.play();
    rightscore = rightscore + 1;
    timer2 = true;
    timer = 0;
    ballx = width/2;
    bally = height/2;
    ballvx = random(-5, 5);
    ballvy = random(-3, 3);
  }
  
  //left side
  if (ballx >= width - balld/2) {
    coin.rewind();
    coin.play();
    timer2 = true;
    timer = 0;
    leftscore = leftscore + 1;
    ballx = width/2;
    bally = height/2;
    ballvx = random(-5, 5);
    ballvy = random(-3, 3);
  }
  
  //if (ballx <= 0) {
  //  rightscore = rightscore + 1;
  //  timer = 0;
  //  ballx = width/2;
  //  bally = height/2;
    
  //}
  ////left side
  //if (ballx >= width) {
  //  timer = 0;
  //  leftscore = leftscore + 1;
  //  ballx = width/2;
  //  bally = height/2;
  //}
  
  //ball reset
  if (timer2 == true && timer <= 500) {
    timer = timer + 5;
    ballx = 400;
    bally = 400;
  } 
  if (timer > 500) {
    timer2 = false;
  }
  
  //paddle
  stroke(0);
  strokeWeight(0);
  fill(255, 255, 0);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //paddle motion
  if (wkey == true)     lefty = lefty - 5;
  if (skey == true)     lefty = lefty + 5;
  if (upkey == true)   righty = righty - 5;
  if (downkey == true) righty = righty + 5; 
  
  //AI system(right paddle)
  if (AI == true && bally > righty + 15) {
    righty = righty + AIspeed;
  } else if (AI == true && bally < righty - 15) {
    righty = righty - AIspeed;
  }
  
  //ball
  ballx = ballx + ballvx;
  bally = bally + ballvy;
  circle(ballx, bally, balld);
  
  //ball bouncing
  if (ballx < balld/2 || ballx > width-balld/2) {
    ballvx = ballvx * -1;
  }
  if (bally < balld/2 || bally > height-balld/2) {
    ballvy = ballvy * -1;
  }
  
  //on paddle
  if (dist(ballx, bally, leftx, lefty) <= balld/2 + leftd/2) {
    ballvx = (ballx - leftx)/ballac;
    ballvy = (bally - lefty)/ballac;
  }
  if (dist(ballx, bally, rightx, righty) <= balld/2 + rightd/2) {
    ballvx = (ballx - rightx)/ballac;
    ballvy = (bally - righty)/ballac;
  }
  
  //ball & paddle limits
  //ball
  if (bally < balld/2) {
    bally = balld/2;
  }
  if (bally > height - balld/2) {
    bally = height - balld/2;
  }
  
  //left paddle
  if (lefty < leftd) {
    lefty = leftd;
  }
  
  if (lefty > height - leftd) {
    lefty = height - leftd;
  }
  
  //right
  if (righty < rightd) {
    righty = rightd;
  }
  
  if (righty > height - rightd) {
    righty = height - rightd;
  }
  
  //gameover
  if (leftscore >= 5 || rightscore >= 5) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  //pause button
  if (mouseX > 375 && mouseX < 425 && mouseY > 0 && mouseY < 50) {
    mode = PAUSE;
  }
  
  //restart button
  if (mouseX > 375 && mouseX < 425 && mouseY > 70 && mouseY < 120) {
    leftscore = 0;
    rightscore = 0;
    ballx = width/2;
    bally = height/2;
    ballvx = random(-5, 5);
    ballvy = random(-5, 5);
  }
}

void gametactile() {
  //pause tactile
  if (mouseX > 375 && mouseX < 425 && mouseY > 0 && mouseY < 50) {
    stroke(0);
    strokeWeight(5);
    line(375, 0, 425, 0);
    line(375, 0, 375, 50);
    line(375, 50, 425, 50);
    line(425, 0, 425, 50);
  } else {
    strokeWeight(0);
  }
  
  //restart tactile
  if (mouseX > 375 && mouseX < 425 && mouseY > 70 && mouseY < 120) {
    stroke(0);
    strokeWeight(5);
    line(375, 70, 425, 70);
    line(375, 70, 375, 120);
    line(375, 120, 425, 120);
    line(425, 70, 425, 120);
  } else {
    strokeWeight(0);
  }
}
