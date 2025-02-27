// week02_6_ArrayList_Interger_for_for_mouseDragge_mousePressed
// 想要有更多段, 不要[一筆畫] 一直接著畫
ArrayList<Integer> x,y;
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
   size(400,400);
   img = loadImage("cute.png"); // 每次新的檔, 都要再把圖[拉進來]
} // 記得把圖檔<(向上周一樣)拉到程式碼裡
void draw(){
    background(img);
    fill(255,200); //半透明的色彩 白色, alpha值是128
    rect(0,0,400,400); //畫超大的四邊形,全部蓋住
    // 上面是week02_4
    for(int I=0;I<xx.size();I++){
        ArrayList<Integer> x = xx.get(I);
        ArrayList<Integer> y = yy.get(I);
        for(int i=1;i<x.size();i++){
            line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
        }
    }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
    x = new ArrayList<Integer>(); xx.add(x);
    y = new ArrayList<Integer>(); yy.add(y);
}
