class fondo{
  int x, y;
   PImage f;

  
  fondo (){
    
    x=0;
    y=0;
f= loadImage("fondo.jpg");
    
  }
  void imagen(){
    image (f, x, y);
    
  }
    
  
  
  
  
  
  
  
  
}
