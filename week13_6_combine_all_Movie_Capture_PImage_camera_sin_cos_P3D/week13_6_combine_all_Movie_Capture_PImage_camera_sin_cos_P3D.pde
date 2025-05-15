// week13_6_combine_all_Movie_Capture_PImage_camera_sin_cos_P3D
// 把今天數的,全部加進來
// street.mov及chessboard.png都拉進來
import processing.video.*;
Movie movie;// 等一下, 再把Capture視訊鏡頭加進來
PImage img;
void setup(){
  size(400,400,P3D);
  movie = new Movie(this,"street.mov");//720x480
  movie.loop();
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
  video = new Capture(this,640,480);
  video.start();//要記得開始播放
}
Capture video; //有鏡頭,再加他
void draw(){
  camera(200,200,200,200+cos(radians(frameCount)),200,200+sin(radians(frameCount)),0,1,0);
  background(128);
  if(movie.available())movie.read();//有畫面,就讀入畫面
  beginShape(); //正前方的牆
    texture(img);
    vertex(0,0,0,0,0); // x,y,z,u,v
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
  translate(0,0,1);
  image(movie,0,0,360,240);
  if(movie.available())movie.read();//有畫面,就讀入畫面
  beginShape(); //左邊的牆,直接放視訊
    texture(video);
    vertex(0,0,0,0,0); // x,y,z,u,v
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
}
