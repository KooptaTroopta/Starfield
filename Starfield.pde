Bust[] Coco = new Bust[100];
Zawg[] Dodo = new Zawg[50];
int mX = mouseX;
int mY = mouseY;
int yessir = 0;
void barkround () {
 background(245, 233, 184);
 noStroke();
 for (int i = 0; i<=350; i+=5) {
   fill(10+(i*10000/350*136/10000), 125+(i*10000/350*79/10000), 196+(i*10000/350*44/10000));
   rect(0,i,800,5);
 }
 fill(2, 129, 158);
 bezier(0,353,600,345,500,440,0,590);
 fill(120, 220, 250);
 bezier(0,355,600,345,500,440,0,600);
 for(int i = 20; i<=80; i++) {
   fill(120-((i-20)*1000/80*118/1000), 220-((i-20)*1000/80*91/1000), 250-((i-20)*1000/80*92/1000));
   bezier(-30-i,355,570-i,345,470-i,440,-30-i,600);
 }
 thee(500,500,1,-30);
 thee(650,480,1,-10);
 thee(750,450,1,-10);
 thee(700,550,1,-30);
 thee(590,600,1.2,-20);
 thee(770,800,1.3,-10);
 thee(1120,1100,1.4,-20);
}
void thee (int x,int y, float s, int deg) {
  translate(x,y);
  rotate(deg/360.0);
  scale(s);
  translate(-x,-y);
  fill(186, 168, 117);
  quad(x,y,x+20,y,x+20,y-200,x,y-200);
  fill(143, 108, 10);
  stroke(100);
  ellipse(x-5,y-195,25,25);
  ellipse(x+25,y-195,25,25);
  ellipse(x+10,y-190,25,25);
  stroke(100);
  fill(168, 255, 117);
  quad(x-65,y-200,x-15,y-210,x+15,y-200,x-15,y-220);
  quad(x+85,y-200,x+35,y-210,x-5,y-195,x+35,y-220);
  quad(x-55,y-170,x-5,y-200,x+10,y-200,x-15,y-210);
  quad(x+75,y-170,x+25,y-200,x+10,y-200,x+35,y-210);
  quad(x-75,y-180,x-25,y-200,x+5,y-200,x-25,y-220);
  quad(x+95,y-180,x+45,y-200,x+15,y-200,x+45,y-220);
  noStroke();
  scale(1/s);
  translate(x,y);
  rotate(-1*deg/360.0);
  translate(-x,-y);
}
void mouseClicked() {
  yessir = 1;
  mX = mouseX;
  mY = mouseY;
  fill(#B28046);
  ellipse(mX,mY,100,100);
  fill(0);
  ellipse(mX,mY,15,15);
  fill(#B28046);
  ellipse(mX,mY-5,15,15);
  fill(0);
  ellipse(mX-25,mY-10,25,25);
  ellipse(mX+25,mY-10,25,25);
  fill(255);
  ellipse(mX-23,mY-12,17,17);
  ellipse(mX+23,mY-12,17,17);
  for (int i = 0; i<100; i++) {
    Coco[i] = new Bust();
  }
  for (int i = 0; i<50; i++) {
    Dodo[i] = new Zawg();
  }
}
void setup() {
  pushMatrix();
  size(800,800);
  barkround();
  popMatrix();
  for (int i = 0; i<100; i++) {
    Coco[i] = new Bust();
  }
  for (int i = 0; i<50; i++) {
    Dodo[i] = new Zawg();
  }
}
void draw() {
  System.out.println(yessir);
  pushMatrix();
  barkround();
  popMatrix();
  if (Coco[0].tim <=100) {
    fill(#B28046);
    ellipse(mX,mY,100,100);
    fill(0);
    ellipse(mX,mY,15,15);
    fill(#B28046);
    ellipse(mX,mY-5,15,15);
    fill(0);
    ellipse(mX-25,mY-10,25,25);
    ellipse(mX+25,mY-10,25,25);
    fill(255);
    ellipse(mX-23,mY-12,17,17);
    ellipse(mX+23,mY-12,17,17);
  }
  for (int i = 0; i<100; i++) {
    Coco[i].Move();
    Coco[i].Show();
  }
  for (int i = 0; i<50; i++) {
    Dodo[i].Move();
    Dodo[i].show();
  }
}


class Bust {
  int mySize, myDir, tim;
  double mySpeed, myX, myY;
  Bust () {
    tim = 0;
    mySize = (int)(Math.random()*10)+10;
    mySpeed = Math.random()*10+1;
    myX = mouseX;
    myY = mouseY;
    myDir = (int)(Math.random()*360);
   }
  void Show() {
    if (tim > 100) {
      fill(255);
      ellipse((float)myX, (float)myY, mySize, mySize);
    }
    tim++;
  }
  void Move() {
    if (tim > 100) {
      myX += Math.cos(myDir)*mySpeed;
      myY += Math.sin(myDir)*mySpeed;
    }
  } 
}
class Zawg extends Bust {
  Zawg () {
    tim = 0;
    mySize = 30;
    mySpeed = 20;
    myX = mouseX;
    myY = mouseY;
    myDir = (int)(Math.random()*360);
  }
  void show() {
    if (tim > 100) {
      fill(#B28046);
      ellipse((float)myX, (float)myY, mySize, mySize);
    }
    tim++;
  }
  void Move() {
    if (tim > 100) {
      myX += Math.cos(myDir)*mySpeed;
      myY += Math.sin(myDir)*mySpeed;
    }
  }
}
