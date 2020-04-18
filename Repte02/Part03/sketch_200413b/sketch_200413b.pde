
void draw() {
  //Li donem un color al fons de pantalla.
  background(255);
 
 //Creem una classe PVector per tal que la linneà sempre segueixi al punter.
 //L'altra classe center, la fem per tal que sempre es quedi a la mateixa posició de la finestra.
 PVector mouse = new PVector(mouseX,mouseY);
 PVector center = new PVector(width/2,height/2);
 mouse.sub(center);
 
 //Primer fem que el vector es normalitzi, i després es multipliqui per 50 d'aquesta manera sempre el podrem visualitzar.
 //El vector sempre tindrà una longitud de 50, gràcies al procés de normalització.
 mouse.normalize();
 mouse.mult(50);
 translate(width/2,height/2);
 line(0,0,mouse.x,mouse.y);

}
