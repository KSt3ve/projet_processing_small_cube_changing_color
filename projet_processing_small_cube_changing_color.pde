color[] colors = new color[5];
int[][] indexes = {
  { 0, 1, 2, 3, 4 }, 
  { 3, 4, 0, 1, 2 }, 
  { 1, 2, 3, 4, 0 }, 
  { 4, 0, 1, 2, 3 }, 
  { 2, 3, 4, 0, 1 }
};

void setup() {
  size(250, 250);
  colorMode(HSB);
  stroke(255);
  colors[0] = color(#A40DBC);
  colors[1] = color(#137DEA);
  colors[2] = color(#14C126);
  colors[3] = color(#EA132C);
  colors[4] = color(#E59DE4);
}

void draw() {
  for ( int row = 0; row < 5; row++ ) {
    for ( int square = 0; square < 5; square++ ) {
      fill( colors[ indexes[row][square] ] );    
      rect( 50 * square, 50 * row, 50, 50 );
    }
  }
}

void mousePressed(){
  int x = mouseX / 50;
  int y = mouseY / 50;
  if( x >= 0 && x < 5 && y >= 0 && y < 5 ){
    indexes[y][x]++;
    indexes[y][x]%=colors.length;
  }
}
