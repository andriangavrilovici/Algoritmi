int[] array = new int[5];
void setup() {
  size(1366, 768);
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(50);
  }
  frameRate(1);
}
int i=0;
void draw() {
  background(#102439);

  for (int j=0; j<array.length; j++) {
    if (array[i]>array[j]) {
      int temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    fill(-1);
    text(array[j], 50, 30+20*j);
    stroke(#68BF4B);
    strokeWeight(10);
    line(90, 25+20*j, 90+5*array[j], 25+20*j);
  }
  i++;  
  if (i>array.length-1)
    noLoop();
}
