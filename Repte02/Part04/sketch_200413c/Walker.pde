class Walker{
  
  //Creem totes les variables que necessitem.
  PVector pos, vel;
  int radi = 30;
  color color2;
  int vides = 5;
  String text, nom;
  
  //Al mètode Walker es on guardarem tots els elements necessaris per als objectes.
  //És on li donarem una posició, unes mides, el color i tots els textos necessaris.
  Walker(PVector P_pos, int P_radi,color P_tono,String P_nom,  String txt, int avides){
  pos = P_pos;
  radi = P_radi;
  vel = new PVector (random(-7, 7), random(-7,7));
  color2  = P_tono;
  text = txt;
  vides = avides;
  nom = P_nom;
  

  }
 
 //Al mètode render és on crearem els cercles i li donem la posició als textos.
 void render(){   
   noStroke();
   fill(color2);
   ellipseMode (RADIUS);
   ellipse (pos.x, pos.y, 30, 30);
   text("Vides: " + vides, pos.x-100,pos.y);
   text("Nom: " + nom, pos.x-100,pos.y-30); 
 }
 
 //Al step és on fem que els objectes es moguin amb una posició i una velocitat.
 void step(){
 pos.add(vel);
 
 if(pos.x < 0 || pos.x > width) {
   pos.x -= vel.x;
   vel.x *= -1;
  }
   
   if(pos.y < 0 || pos.y > width){
   pos.y -= vel.y;
   vel.y *= -1;
  } 
}
  
 //Mètode on calcularem les col·lisions entre els dos objectes.
 boolean Collision(Walker otro){
 
 float sumaRadis = radi + otro.radi;
 float dist = dist(pos.x, pos.y, otro.pos.x, otro.pos.y);
 
 if(dist > sumaRadis){
 return false;
 }else{ 
 return true;
   }   
 }
}
