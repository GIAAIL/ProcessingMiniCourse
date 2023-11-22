// 文字也可以是創作素材
PFont myFont;
String txt = "第一道晨曦後溫暖的陽光撒向金黃色大地";

void setup() {
  size(800, 600);
  myFont = createFont("NotoSansTC-Light", 32);
  textFont(myFont);
  frameRate(1);
}

void draw() {
  background(0);
  for (int i = 0; i < txt.length(); i++) {
    fill(map(mouseX, 0, width, 50, 255));
    text(txt.charAt(i), random(width), random(height));
  }
}
