// week06_2_ellipse_translate_push_rotate_translate_box_pop
// 再加1個移動,把物體放到[轉盤的中心]
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  
  translate(width/2,height/2); // 把東西,放到畫面中心
  pushMatrix(); // 第五週教過的 matrix 保護
    // 改一下,要按一下 mouse 才轉給你看
    if(mousePressed) rotateZ(radians(frameCount)); // 對著下面中心旋轉
    translate(-50,0,0); // 把棒子往左移一半,讓右端放正中心
    box(100,30,30); // 橫的棒子
  popMatrix(); // 第五週教過的 matrix 保護
}
