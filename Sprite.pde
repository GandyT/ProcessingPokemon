/* SPRITES CAN BE DIFFERENT SIZES (different # of tiles) */
public class Sprite {
  private PImage img;
  
  public Sprite(String resourceUrl) {
    img = loadImage(resourceUrl);
  }
  
  public void render(int x, int y) {
    image(img, x, y);
  }
}
