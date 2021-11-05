class autos{
  
  float x, x2;
  float y, y2;
  float vel, vel2;
  PImage auto1, auto2;

 
  
  //const
  autos (){
     x= 100;
  y= random(200,400);
  vel=random (3,11);
  auto1 = loadImage("a"+int(random(2))+".png");
 
  }
  

  
  void display (){
  image (auto1, x, y);
  auto1.resize( int(95), int(60) );
  
  }
  
  void autosm (){
  x+=vel;
   reciclar();
  }
  
  void reciclar(){
  if ( x > width ){
    x = 0;
  }
}
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
