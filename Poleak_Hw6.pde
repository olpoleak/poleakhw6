float x; float y; float d;
float x1; float y1; float d1;
int toggle = 1,count = 0;
void setup(){
     size(600,400);
     x = 100; y = 200; d = 10;
     x1 = 300; y1 = 200; d1 = 10;
     frameRate(5);
}
void draw(){
     background(0);
     if((count++ % 2) == 0){ 
     if(toggle == 0) toggle = 1;
     else toggle = 0;
   }
     println(count);
     poleak(x,y,d);
     poleak(x1,y1,d1);

}
void poleak(float x, float y, float d){
     if(toggle == 0) fill(0,200,0);
     else fill(20,75,200);    
     //Body:
     //fill(#12B44C);
     ellipse(x+5*d,y+3*d,d*15,d*12.5);  //ellipse(400,260,300,250);
     //Hand:
     arc(x+1*d,y+3*d,d*2,d*3.5,0,PI);  //arc(320,260,40,70,0,PI);
     arc(x+9*d,y+3*d,d*2,d*3.5,0,PI);  //arc(480,260,40,70,0,PI);
     arc(x+1*d,y+4*d,d*2,d*2.5,0,PI);  //arc(320,280,40,50,0,PI);
     arc(x+9*d,y+4*d,d*2,d*2.5,0,PI);  //arc(480,280,40,50,0,PI);
     //Head:
     ellipse(x+5*d,y-2.25*d,d*10,d*9);  //ellipse(400,155,200,180);     
     //Eye:
     fill(255);
     ellipse(x+4*d,y-2*d,d*2,d*5);  //ellipse(380,160,40,100);
     ellipse(x+6*d,y-2*d,d*2,d*5);  //ellipse(420,160,40,100);
     fill(0);
     circle(x+4*d,y-3*d,d*1);  //circle(380,140,20);
     circle(x+6*d,y-3*d,d*1);  //circle(420,140,20);
     fill(255);
     circle(x+4*d,y-3*d,d*0.5);  //circle(380,140,10);
     circle(x+6*d,y-3*d,d*0.5);  //circle(420,140,10);     
     //Mouth:
     fill(#FCF5BF);
     ellipse(x+5*d,y,d*7.5,d*4.5);  //ellipse(400,200,150,90);
     fill(255,0,0);
     arc(x+5*d,y-0.5*d,d*1,d*1.5,0,PI);  //arc(400,190,20,30,0,PI);
     fill(#FCF5BF);
     stroke(0); 
     arc(x+4.5*d,y-0.5*d,d*1,d*0.75,0,PI);  //arc(390,190,20,15,0,PI);
     arc(x+5.5*d,y-0.5*d,d*1,d*0.75,0,PI);  //arc(410,190,20,15,0,PI);     
     //Feet:
     ellipse(x+3*d,y+8*d,d*3,d*3.5);  //ellipse(365,360,60,70);
     ellipse(x+7.5*d,y+8*d,d*3,d*3.5);  //ellipse(450,360,60,70);    
}
