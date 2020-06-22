int[] array = new int[20];
void setup() {
  size(1366, 768);
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(50);
  }
  frameRate(4);
}
int i=0;
void draw() {
  background(#102439);

 // for (int i = 0; i < array.length - 1; i++) {
    int least = i;
    for (int j = i + 1; j < array.length; j++) {
        if (array[j] < array[least]) {
        least = j;
      }
   // }
        int tmp = array[i];
        array[i] = array[least];
        array[least] = tmp;
    fill(-1);
    text(array[i], 50, 30+20*i);
    stroke(#68BF4B);
    strokeWeight(10);
    line(90, 25+20*i, 90+5*array[i], 25+20*i);
  }
  i++;  
  if (i>array.length-1)
    noLoop();
}
