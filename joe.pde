
class joe{
  float x;
  float y;
  float vel;
   PImage joe;
   float prueba; //prueba para armar la colision ganar/perder
boolean a =true;
boolean o =false;


  joe (float xj, float yj, float velj, float pruebaa){
    
    x= xj;
    y= yj;
    vel=velj;
    prueba= pruebaa;
    joe = loadImage("f.png");
    

  }

 
   void display (){
  image (joe, x, y);
  //rect (x, y, 50,50);
 joe.resize( int(prueba), int(prueba) );
  
  }
  
 void reciclar(){ //no srive
   if ( mouseX > width ){
    x = 500;
    y=500;
   }
 }
 
 void moverConMouse() {
    x = mouseX;
    y= mouseY;
  }
void colision(autos [] au){
 for( int i = 0 ; i < au.length ; i++ ){
  float xau= au[i].getX();
float yau= au[i].getY();
float d = dist (xau + 90 , yau +60 , x, y  );
//fill (255);
//rect (xau, yau,95,60);
if (x <  xau + 90 && x > xau && y <  yau + 30 && y > yau  && a==true && o ==false ) { //tobias
a=false;

 juegoo.estado = 2;
}
     
    
 } 
 }

 void colision2(casa c){
 //float xll= l.getX();
 //float yll = l.getY();
 //rect (xll, yll, 50,50);
 //float tam = t.getam();
float xca= c.getX();
float yca= c.getY();



  if((x < 800  && x > 1 && y < 120   && y > 0 )) {

//a=true;


  }
  if(x <  xca + 150  && x > xca && y <  yca + 100 && y > yca && a==true && o==false  )   {
o=true;

    juegoo.estado =3;


}
println(mouseX);
println (mouseY);
println ("a" + a);
println ("o" + o);


}
 }
