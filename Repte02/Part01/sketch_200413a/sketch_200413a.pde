
// Declarem les variables.
float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;

void setup() {
  
  //Li donem unes mides i un color a la finestra.
  size(640,360);
  background(255);
}

void draw() {
  background(255);
 
 //Fem que segons la seva velocitat és mourà la pilota.
  x = x + xspeed;
  y = y + yspeed;
  
  //I fem que cada vegada que la pilota reboti canvi la seva posició.
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  
  //I per últim fem que la pilota es mostri en les posicions x, y.
  stroke(0);
  fill(175);
  ellipse(x,y,16,16);
}
