//creating image names 
PImage sun;
PImage moon;
//int for play
int play;
//setting starting locations using int
int sunLocation = 10;
int moonLocation= 10;
//int locations for end screen text saying who won
int endWidth=10;
int endHeight=400;
//int locationf for reset button (X, Y)
int buttonX=60;
int buttonY=450;
//setting the valuse for the reset button 
boolean reset = false;
void setup()
{
  //adding images 
  sun = loadImage ("Sun.png");
  moon = loadImage ("HalfMoon.jpg.png");
  //window size
  size(300, 900);
}
void draw()
{
  //if reset is false...
  if (reset == false)
  { 
    //background colour - blue 
    background(0, 200, 200);
    //image sizing and placements 
    image(sun, 50, sunLocation);
    sun.resize(0, 50);
    image(moon, 210, moonLocation);
    moon.resize(0, 40);
    //if sun reaches end of window
    if (sunLocation >= 900)
    {
      //Then the screen goes onto stage 1
      play = 1;
    }
    //if the moon reaches end of window
    if (moonLocation >= 900)
    {
      //screen changes to play 2
      play = 2;
    }
    // what play 1 is
    if (play==1)
    {
      //if sun reaches end screen, play 1 is the end screen for this senario
      //what play 1 is 
      reset = true;
      //Text appears on the screen to inform that the game ended
      textSize(25);
      fill(random(255), random(255), random(255));
      text("Congrats!!! Moon lost.", endWidth, endHeight);
      //Text mode's location on the end screen
      fill(0);
      rect(buttonX, buttonY, 150, 70);
      //colour for reset text
      fill(255);
      //text for reset text
      textSize(40);
      text("Reset", 80, 500);
    }
    //If the system goes to stage 2
    if (play == 2)
    {
      //if sun reaches end screen, play 2 is the end screen for this senario
      //what play 2 is 
      reset = true;
      //Text appears on the screen to inform that the game ended
      textSize(30);
      fill(random(255), random(255), random(255));
      text("Congrats!!! Sun lost.", endWidth, endHeight);
      //Rectangle to show the text reset as an actual button
      fill(0);
      rect(buttonX, buttonY, 150, 70);
      //colour for reset text
      fill(255);
      //text for reset text
      textSize(40);
      text("Reset", 80, 500);
    }
  }
}
void keyPressed()
{  
  //move sun when "a" key is pressed
  if (key == 'a')
  {
    sunLocation = sunLocation+10;
  }
  //move moon when "l" key is pressed 
  if (key == 'l')
  {
    moonLocation = moonLocation+10;
  }
}
void mouseClicked()
{
  //If you click in between these coordinates
  if (mouseX > 130  && mouseX < 280 && mouseY > 450 && mouseY < 520)
  {
    reset=false;
    sunLocation = 10;
    moonLocation = 10;
    play = 0;
  }
}
/** I would like to apologize that my reset button assingment is far over due and would also
 like to thank you for allowing me to still hand it in.
 */
