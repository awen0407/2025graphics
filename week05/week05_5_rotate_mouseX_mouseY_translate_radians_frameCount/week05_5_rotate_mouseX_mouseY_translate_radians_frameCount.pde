// week05_5_rotate_mouseX_mouseY_translate_radians_frameCount
// 比較 translate 與 rotate 的順序
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  // 請做以下測試:把下面2行,調一下順序
  // 會發現: 兩行順序不同, 一個自轉,一個公轉
  // 在電腦圖學裡, 畫圖時, 會照著之前[累積的移動,旋轉]來放東西
  rotate(radians(frameCount)*3); // 一秒有60個frame,轉60度,要變成radians單位
  translate(mouseX,mouseY); //移到mouse所在位置
  rect(-50,-5,100,10); // 寬度100的棒子,但放在左上角
}
