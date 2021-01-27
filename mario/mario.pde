int counter = 0;

/**
 * We must set the screen dimensions to something
 */
final int BLOCK = 16, 
  screenWidth = 32*BLOCK, 
  screenHeight = 27*BLOCK;

/**
 * Gravity consists of a uniform downforce,
 * and a gravitational acceleration
 */
float DOWN_FORCE = 2; 
float ACCELERATION = 1.3;
float DAMPENING = 0.75;


/**
 * initializing means building an "empty"
 * level, which we'll 
 */
void initialize() {
  SoundManager.mute(false);
  SoundManager.setDrawPosition(screenWidth-10, 10);
  frameRate(30);
  reset();
}

void reset() {
  clearScreens();
  addScreen("Level One", new LevelR(7.3*width, height));
  addScreen("Level One Dark Level", new LevelRDarkLevel(width, height));
  addScreen("Level Two", new LevelMF(4*width, height));
  addScreen("Level Three", new LevelMC(4*width, height));
  addScreen("Level Four", new LevelB(4*width, height));
  setActiveScreen("Level One");
  
}

void gameFinished() {
  initialize();
}

void nextLevel(String levelName) {
  setActiveScreen(levelName);
}
