public class MonoBehaviour {
  public MonoBehaviour () {
    gameObjects.add(this);
  }
  
  public void update() {
  
  }
  
  public void keyPressed() {
    System.out.println(keyCode);
  }
  
  public void render() {
  // default render is empty
  }
}
