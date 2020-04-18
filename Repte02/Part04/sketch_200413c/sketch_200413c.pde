//Creem els dos characters de tipos Walker.
Walker warrior;
Walker enemy;

//Declarem una variable per contar el número de vegades que es toquen els dos objectes.
int repeticions = 5;

void setup(){
 
  //Li donem unes mides a la finestra.
  size(500, 500);
  
  //Creem els dos objectes amb una posició inicial amb un color i amb el text del seu nom i vides.
  PVector posicioInicial = new PVector (width/2, height/2);
  warrior = new Walker (posicioInicial, 100, color(0,255,0),"Warrior","Vides: ",5); 
  
  PVector posicioInicial2 = new PVector (width/2-200, height/2);
  enemy = new Walker (posicioInicial2, 100, color(255,0,0),"Enemy", "Vides: ", 3); 
  
}

void draw(){
  
  //Li donem un fons a la finestra.
  background(25);
  
  //Cridem al mètode step per als dos objectes.
  warrior.step();
  enemy.step();

 
 //Si l'enemy col·lisiona amb el warrior i les repeticions es igual a 5.
 //Farem que el Warrior perdi una vida.
 if(enemy.Collision(warrior) && repeticions == 5){
    PVector posicioInicial = new PVector (width/2, height/2);
    warrior = new Walker (posicioInicial, 100, color(0,255,0),"Warrior", "vides: ",4); 
    
    PVector posicioInicial2 = new PVector (width/2-200, height/2);
    enemy = new Walker (posicioInicial2, 100, color(255,0,0),"Enemy", "vides: ", 3);
    
    repeticions--;
    println("1");
  }
  
  //Si l'enemy col·lisiona amb el warrior i les repeticions es igual a 4.
  //Farem que el Warrior perdi una vida.
  else  if(enemy.Collision(warrior) && repeticions == 4){
    PVector posicioInicial = new PVector (width/2, height/2);
    warrior = new Walker (posicioInicial, 100, color(0,255,0),"Warrior", "vides: ",3); 
    
    PVector posicioInicial2 = new PVector (width/2-200, height/2);
    enemy = new Walker (posicioInicial2, 100, color(255,0,0),"Enemy", "vides: ", 3);
    
    repeticions--;
    println("2");
  }
  
  //Si l'enemy col·lisiona amb el warrior i les repeticions es igual a 3.
  //Farem que el Warrior perdi una vida.
  else if(enemy.Collision(warrior) && repeticions == 3){
    PVector posicioInicial = new PVector (width/2, height/2);
    warrior = new Walker (posicioInicial, 100, color(0,255,0),"Warrior", "vides: ",2); 
    
    PVector posicioInicial2 = new PVector (width/2-200, height/2);
    enemy = new Walker (posicioInicial2, 100, color(255,0,0),"Enemy", "vides: ", 3);
    
    repeticions--;
    println("3");
  }
  
  //Si l'enemy col·lisiona amb el warrior i les repeticions es igual a 2.
  //Farem que el Warrior perdi una vida.
  else if(enemy.Collision(warrior) && repeticions == 2){
    PVector posicioInicial = new PVector (width/2, height/2);
    warrior = new Walker (posicioInicial, 100, color(0,255,0),"Warrior", "vides: ",1); 
    
    PVector posicioInicial2 = new PVector (width/2-200, height/2);
    enemy = new Walker (posicioInicial2, 100, color(255,0,0),"Enemy", "vides: ", 3);
    
    repeticions--;
    println("4");
  }

  //Si l'enemy col·lisiona amb el warrior i les repeticions es igual a 1.
  //Farem que el Warrior es quedi a 0 vides i desaparegui.
  else if(enemy.Collision(warrior) && repeticions == 1){
    PVector posicioInicial = new PVector (width/2-200, height/2);
    warrior = new Walker (posicioInicial, 100, color(138,221,45,0),"Loser", "vides: ",0); 
    
    PVector posicioInicial2 = new PVector (width/2-200, height/2);
    enemy = new Walker (posicioInicial2, 100, color(255,0,0),"Winner", "vides: ", 3);
    
    repeticions--;
    println("5");
  }
  
  //Cridem al mètode render per als dos objectes.
  warrior.render();
  enemy.render();   
}
