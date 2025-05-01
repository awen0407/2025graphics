// week11_3_postman_again
// 重新來一次, 讓程式的架構變更清楚
PImage postman, head, body, uparm1, hand1, uparm2, hand2, foot1, foot2;
void setup(){ // 把上面的圖, 都拉進新專案裡
  size(560,560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  hand1 = loadImage("hand1.png");
  uparm2 = loadImage("uparm2.png");
  hand2 = loadImage("hand2.png");
  foot1 = loadImage("foot1.png");
  foot2 = loadImage("foot2.png");
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0;
ArrayList<String> lines = new ArrayList<String>();
void keyPressed(){
  if(key=='s'){ // 從這裡開始 每次按 's' 就存一組 angle
    String now = ""; // 要放現在全部的關節的值
    for(int i=0; i<20; i++){ // 利用 for 迴圈
      now += angleX[i] + " "; 
      now += angleY[i] + " ";
    }
    lines.add(now); // 把現在的這行, 加到 lines 裡
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt", arr);
    println("現在存檔:" + now);
  }
}
void keyPressed(){
  if(key=='1') ID = 1; // 左邊臂
  if(key=='2') ID = 2; // 左邊手
  if(key=='3') ID = 3; // 右邊臂
  if(key=='4') ID = 4; // 右邊手
  if(key=='5') ID = 5; // 
  if(key=='6') ID = 6; // 
  if(key=='0') ID = 0; // 頭
}
void  mouseDragged(){
  angleX[ID] += mouseX - pmouseX;
  angleY[ID] += mouseY - pmouseY;
}
void draw(){
  background(#FFFFF2);
  image(body,0,0);//先畫身體
    pushMatrix();
    translate(+236, +231); // 再放回去正確的位置
    rotate(radians(angleX[0]));
    translate(-236, -231); // 把頭的旋轉中心, 放到(0,0)
    image(head, 0, 0); // 再畫頭
  popMatrix();
    pushMatrix(); // 要畫左邊的上手臂、手肘
    translate(+185, +261);
    rotate(radians(angleX[1]));
    translate(-185, -261);
    image(uparm1, 0, 0); // 上手臂
    pushMatrix();
      translate(+116, +265);
      rotate(radians(angleX[2]));
      translate(-116, -265);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
    pushMatrix(); // 要畫右邊的上手臂、手肘
    translate(290, 262);
    rotate(radians(angleX[3]));
    translate(-290, -262);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(357, 259);
      rotate(radians(angleX[4]));
      translate(-357, -259);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();
  pushMatrix(); //foot1
    translate(220,-375);
    rotate(radians(angleX[5]));
    translate(-220,375);
    image(foot1, 0, 0);
  popMatrix();
    pushMatrix(); //foot2
    translate(260,372);
    rotate(radians(angleX[6]));
    translate(-260,-372);
    image(foot1, 0, 0);
  popMatrix();
}
