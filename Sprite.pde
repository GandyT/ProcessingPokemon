/* SPRITES CAN BE DIFFERENT SIZES (different # of tiles) */
public class Sprite {
  private PImage img;
  private int w;
  private int h;
  
  // width and height in tiles
  public Sprite(String resourceUrl, int w, int h) {
    img = loadImage(resourceUrl);
    this.w = w;
    this.h = h;
    img.resize(w * TILE_WIDTH, h * TILE_WIDTH);
  }
  
  public void render(int r, int c) {
    image(img, c * TILE_WIDTH, r * TILE_WIDTH);
  }
  
  public int getWidth() { return w; }
  public int getHeight() { return h; } 
}
