// week03_01_P3D_translate_rotateY_radians
void setup(){
  size(400,400,P3D); //開啟3d模式
}
void draw(){ 
  background(128); //灰色背景
  translate(mouseX,mouseY);
  rotateY(radians(frameCount)); //對y旋轉
  box(200); //大小200的3d box盒子
}
