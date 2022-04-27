void option() {

  background(#6F3004);
  //imageMode(CORNER);
  //image(optionbackground, 0, 0, 800, 800);

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

  fill(0);
  textSize(40);
  text("Ball size", 70, 250);
  text("Paddle size", 55, 400);
  text("Ball speed", 60, 550);
  text("AI difficulty", 50, 700);

  fill(#B6AFB7);
  //ball size
  optiontactile2();
  strokeWeight(0);
  rect(310, 200, 100, 70);
  rect(470, 200, 100, 70);
  rect(630, 200, 100, 70);

  //paddle size
  rect(310, 350, 100, 70);
  rect(470, 350, 100, 70);
  rect(630, 350, 100, 70);

  //ball speed
  rect(310, 500, 100, 70);
  rect(470, 500, 100, 70);
  rect(630, 500, 100, 70);
  
  //AI difficulty
  rect(310, 650, 100, 70);
  rect(470, 650, 100, 70);
  rect(630, 650, 100, 70);
  
  fill(0);
  textSize(30);
  text("small", 327, 247);
  text("small", 327, 397);
  text("small", 327, 547);

  textSize(25);
  text("medium", 478, 245);
  text("medium", 478, 395);
  text("medium", 478, 545);

  textSize(30);
  text("large", 647, 247);
  text("large", 647, 397);
  text("large", 647, 547);
  
  textSize(30);
  text("Easy", 330, 697);
  text("Hard", 487, 697);
  textSize(25);
  text("Extreme", 640, 695);
}

void optionClicks() {
  if (mouseX > 20 && mouseX < 70 && mouseY > 20 && mouseY < 50) {
    mode = INTRO;
  }

  //game control

  //ball size (button 1, 2, 3)===============================================================================
  if (mouseX > 310 && mouseX < 410 && mouseY > 200 && mouseY < 270) {
    button1 = !button1;
  } 
  if (mouseX > 470 && mouseX < 570 && mouseY > 200 && mouseY < 270) {
    button2 = !button2;
  }
  if (mouseX > 630 && mouseX < 730 && mouseY > 200 && mouseY < 270) {
    button3 = !button3;
  }

  //paddle size (button 4, 5, 6)===============================================================================
  if (mouseX > 310 && mouseX < 410 && mouseY > 350 && mouseY < 420) {
    button4 = !button4;
  }
  if (mouseX > 470 && mouseX < 570 && mouseY > 350 && mouseY < 420) {
    button5 = !button5;
  }
  if (mouseX > 630 && mouseX < 730 && mouseY > 350 && mouseY < 420) {
    button6 = !button6;
  }

  //ball speed (button 7, 8, 9)===============================================================================
  if (mouseX > 310 && mouseX < 410 && mouseY > 500 && mouseY < 570) {
    button7 = !button7;
  }

  if (mouseX > 470 && mouseX < 570 && mouseY > 500 && mouseY < 570) {
    button8 = !button8;
  }
  if (mouseX > 630 && mouseX < 730 && mouseY > 500 && mouseY < 570) {
    button9 = !button9;
  }
  
  //AI difficulty ===============================================================================
  if (mouseX > 310 && mouseX < 410 && mouseY > 650 && mouseY < 720) {
    button10 = !button10;
  }

  if (mouseX > 470 && mouseX < 570 && mouseY > 650 && mouseY < 720) {
    button11 = !button11;
  }
  if (mouseX > 630 && mouseX < 730 && mouseY > 650 && mouseY < 720) {
    button12 = !button12;
  }
  
  if (button7 == true) {
    ballac = 17;
  } else {
    ballac = ballac + 0;
  }
  
  if (button9 == true) {
    ballac = 13;
  } else {
    ballac = ballac + 0;
  }
  
  if (button7 == false && button9 == false) {
    ballac = 15;
  }
}

void optiontactile() {
  if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 100) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
}

void optiontactile2() {
  //selector

  //first row
  if (mouseX > 310 && mouseX < 410 && mouseY > 200 && mouseY < 270) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(310, 200, 310, 270);
    line(310, 200, 410, 200);
    line(310, 270, 410, 270);
    line(410, 200, 410, 270);
  } else {
    strokeWeight(0);
  }

  if (mouseX > 470 && mouseX < 570 && mouseY > 200 && mouseY < 270) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(470, 200, 470, 270);
    line(470, 200, 570, 200);
    line(470, 270, 570, 270);
    line(570, 200, 570, 270);
  } else {
    strokeWeight(0);
  }

  if (mouseX > 630 && mouseX < 730 && mouseY > 200 && mouseY < 270) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(630, 200, 630, 270);
    line(630, 200, 730, 200);
    line(630, 270, 730, 270);
    line(730, 200, 730, 270);
  } else {
    strokeWeight(0);
  }

  //second row
  if (mouseX > 310 && mouseX < 410 && mouseY > 350 && mouseY < 420) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(310, 350, 310, 420);
    line(310, 350, 410, 350);
    line(310, 420, 410, 420);
    line(410, 350, 410, 420);
  } else {
    strokeWeight(0);
  }

  if (mouseX > 470 && mouseX < 570 && mouseY > 350 && mouseY < 420) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(470, 350, 470, 420);
    line(470, 350, 570, 350);
    line(470, 420, 570, 420);
    line(570, 350, 570, 420);
  } else {
    strokeWeight(0);
  }

  if (mouseX > 630 && mouseX < 730 && mouseY > 350 && mouseY < 420) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(630, 350, 630, 420);
    line(630, 350, 730, 350);
    line(630, 420, 730, 420);
    line(730, 350, 730, 420);
  } else {
    strokeWeight(0);
  }

  //third row
  if (mouseX > 310 && mouseX < 410 && mouseY > 500 && mouseY < 570) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(310, 500, 310, 570);
    line(310, 500, 410, 500);
    line(310, 570, 410, 570);
    line(410, 500, 410, 570);
  } else {
    strokeWeight(0);
  }

  if (mouseX > 470 && mouseX < 570 && mouseY > 500 && mouseY < 570) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(470, 500, 470, 570);
    line(470, 500, 570, 500);
    line(470, 570, 570, 570);
    line(570, 500, 570, 570);
  } else {
    strokeWeight(0);
  }

  if (mouseX > 630 && mouseX < 730 && mouseY > 500 && mouseY < 570) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(630, 500, 630, 570);
    line(630, 500, 730, 500);
    line(630, 570, 730, 570);
    line(730, 500, 730, 570);
  } else {
    strokeWeight(0);
  }
  
  //fourth row
  if (mouseX > 310 && mouseX < 410 && mouseY > 650 && mouseY < 720) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(310, 650, 310, 720);
    line(310, 650, 410, 650);
    line(310, 720, 410, 720);
    line(410, 650, 410, 720);
  } else {
    strokeWeight(0);
  }

  if (mouseX > 470 && mouseX < 570 && mouseY > 650 && mouseY < 720) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(470, 650, 470, 720);
    line(470, 650, 570, 650);
    line(470, 720, 570, 720);
    line(570, 650, 570, 720);
  } else {
    strokeWeight(0);
  }
  
  if (mouseX > 630 && mouseX < 730 && mouseY > 650 && mouseY < 720) {
    stroke(255, 0, 0);
    strokeWeight(5);
    line(630, 650, 630, 720);
    line(630, 650, 730, 650);
    line(630, 720, 730, 720);
    line(730, 650, 730, 720);
  } else {
    strokeWeight(0);
  }

  strokeWeight(0);
  
  //ball size (button 1, 2, 3)
  if (button1 == true) {
    balld = 75;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(310, 200, 100, 70);
  } else {
    strokeWeight(0);
  }
  if (button2 == true) {
    balld = balld + 0;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(470, 200, 100, 70);
  } else {
    strokeWeight(0);
  }
  if (button3 == true) {
    balld = 125;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(630, 200, 100, 70);
  }else{
    strokeWeight(0);
  }

  //paddle size (button 4, 5, 6)
  if (button4 == true) {
    leftd = 150;
    rightd = 150;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(310, 350, 100, 70);
  } else {
    strokeWeight(0);
  }
  if (button5 == true) {
    leftd = 200;
    rightd = 200;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(470, 350, 100, 70);
  } else {
    strokeWeight(0);
  }
  if (button6 == true) {
    leftd = 250;
    rightd = 250;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(630, 350, 100, 70);
  }else {
    strokeWeight(0);
  }

  //ball speed (button 7, 8, 9)
  if (button7 == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(310, 500, 100, 70);
  }else {
    strokeWeight(0);
  }
  if (button8 == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(470, 500, 100, 70);
  }else {
    strokeWeight(0);
  }
  if (button9 == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(630, 500, 100, 70);
  }else {
    strokeWeight(0);
  }
  
  //AI difficulty
  if (button10 == true) {
    AIspeed = 3;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(310, 650, 100, 70);
  }else {
    strokeWeight(0);
  }
  if (button11 == true) {
    AIspeed = 5;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(470, 650, 100, 70);
  }else {
    strokeWeight(0);
  }
  if (button12 == true) {
    AIspeed = 7;
    stroke(255, 0, 0);
    strokeWeight(5);
    rect(630, 650, 100, 70);
  }else {
    strokeWeight(0);
  }
  
}

void exittactile() {
  if (mouseX > 20 && mouseX < 70 && mouseY > 20 && mouseY < 50) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
}
