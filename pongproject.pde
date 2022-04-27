import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pong project

//setup
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;
final int OPTION   = 5;

//entity variables
float leftx, rightx, lefty, righty, leftd, rightd;//paddle
float ballx, bally, balld, ballvx, ballvy;//ball

//AI mode
boolean AI;
int AIspeed;

//image background
PImage introbackground, gamebackground, pausebackground, gameoverbackground, optionbackground, pausebackground2, restartbackground;

//keyboard variables
boolean  wkey, skey, upkey, downkey;

//score
int leftscore, rightscore, timer;
boolean timer2;

//ball acceleration
int ballac;

//option buttons
boolean button1, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12;

//music
Minim minim;
AudioPlayer theme, coin;

void setup() {
  size(800, 800);
  mode = INTRO;
  
  //paddle
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  ballvx = random(-5, 5);
  ballvy = random(-3, 3);
  ballac = 15;

  //image
  introbackground  = loadImage("pong-background.jpeg");
  gamebackground   = loadImage("tennis-background.jpeg");
  pausebackground  = loadImage("stop-background.png");
  pausebackground2 = loadImage("play-background.jpeg");
  restartbackground = loadImage("restart-background.png");
  optionbackground = loadImage("option-background2.png");
  
  //key board
  wkey    = false;
  skey    = false;
  upkey   = false; 
  downkey = false;
  
  //score variables
  leftscore  = 0;
  rightscore = 0;
  timer = 0;
  timer2 = false;
  
  //option
  button1 = false;
  button2 = false;
  button3 = false;
  button4 = false;
  button5 = false;
  button6 = false;
  button7 = false;
  button8 = false;
  button9 = false;
  button10 = false;
  button11 = false;
  button12 = false;
  
  //AI mode
  AI = false;
  AIspeed = 5;
  
  //music 
  minim = new Minim(this);
  coin = minim.loadFile("coin copy.wav");
  theme = minim.loadFile("theme.mp3");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTION) {
    option();
  } else {
    println("Mode Error" + mode);
  }
}
