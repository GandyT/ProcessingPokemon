/* 
This is a recreation of Pokemon in Processing
Recreation of Unity APIs in Processing
*/

ArrayList<MonoBehaviour> gameObjects;
static int TILE_WIDTH = 60;
static int[][] tiles; // subsection that is displayed of full map
static int[] camera; // { rows, columns }
static Sprite[] sprites; 

void setup() {
  size(1200, 900);
  camera = new int[]{height/TILE_WIDTH, width/TILE_WIDTH};
  gameObjects = new ArrayList<MonoBehaviour>();
  sprites = new Sprite[]{
    new Sprite("Assets/path.png", 1, 1)
  }; // sprites stored in memory
  
  /* INITIALIZE STARTING GAME OBJECTS */
  new MonoBehaviour();
}

void draw() {
  
  // draw bg
  for (int r = 0; r < camera.length; ++r) {
    for (int c = 0; c < camera[r].length; ++c) {
      sprites[0].render(r, c);
    }
  }
  
  // draw gameobjects
  for (MonoBehaviour gameObject : gameObjects) {
    gameObject.update();
    
    // if game object is on camera
    gameObject.render();
  }
}

void keyPressed() {
  for (MonoBehaviour gameObject : gameObjects) {
    gameObject.keyPressed();
  }
}
