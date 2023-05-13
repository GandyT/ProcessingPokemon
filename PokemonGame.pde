/* 
This is a recreation of Pokemon in Processing
Recreation of Unity APIs in Processing
*/

ArrayList<MonoBehaviour> gameObjects;
static int TILE_WIDTH = 20;
static int[][] camera; // subsection that is displayed of full map
static Sprite[] sprites; 

void setup() {
  size(1200, 900);
  camera = new int[height/TILE_WIDTH][width/TILE_WIDTH];
  gameObjects = new ArrayList<MonoBehaviour>();
  sprites = new Sprite[]{
    
  }; // sprites stored in memory
  
  /* INITIALIZE STARTING GAME OBJECTS */
  new MonoBehaviour();
}

void draw() {
  // draw bgs, create z-index of some sort?
  // draw gameobjects
  for (MonoBehaviour gameObject : gameObjects) {
    gameObject.update();
    gameObject.render();
  }
}

void keyPressed() {
  for (MonoBehaviour gameObject : gameObjects) {
    gameObject.keyPressed();
  }
}
