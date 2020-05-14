void scene(){
  
  // global translation and rotation
  translate(camX,camY,camZ);
  
  rotateX( radians(rotX) );
  rotateY( radians(rotY) );
  rotateZ( radians(rotZ) );
  
  // box container for the particles
  stroke(0);
  noFill();
  box(boundary * 2);
  
  
}
