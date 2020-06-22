import processing.serial.*;
int[] a = new int [10];
void setup(){
   size(1366, 768);
   for (int i=0; i<a.length; i++) {
    a[i] = (int)random(7);
  }frameRate(190);
}
/*rect(mutarea la >dreapta / <stanga 1, mutarea in <jos / >sus 2, grosimea 3, lungirea in jos 4, rotungirea 5);*/
int i=0,j=0,m=0,s=0;int iplus1=1,stop=0;
void draw(){
  int mvspace=35,mvheight=350,mvwidth=25,mvupdown=30,mvlength=35,round=25;
  int mvlr=((1366-(mvspace*a.length))/2)+5;
  background(#102439);
  noStroke();
  fill(204, 102, 0);
  for(int k=0;k<a.length;k++){
    rect(mvlr+mvspace*k, (mvheight+1)-(mvupdown+mvlength*a[k]), mvwidth, (mvupdown-2)+mvlength*a[k], round);
  }
  if(i<a.length && iplus1<a.length){
  if(a[i]>a[iplus1]){
    fill(#102439);
    rect(mvlr+mvspace*i, mvheight-(mvupdown+mvlength*a[i]), mvwidth, mvupdown+mvlength*a[i], round);
    rect(mvlr+mvspace*(iplus1), mvheight-(mvupdown+mvlength*a[iplus1]), mvwidth, mvupdown+mvlength*a[iplus1], round);
  }else{
    // delay(1000);
     fill(102);
     rect(mvlr+mvspace*i, mvheight-(mvupdown+mvlength*a[i]), mvwidth, mvupdown+mvlength*a[i], round);
     rect(mvlr+mvspace*iplus1, mvheight-(mvupdown+mvlength*a[iplus1]), mvwidth, mvupdown+mvlength*a[iplus1], round);
   }
  if(a[i]>a[iplus1] && j<(mvupdown+mvlength*a[i])+15){//dam in jos
    if(j<(mvupdown+mvlength*a[i])+3)
      fill(#00ff00);
    else fill(#102439);
    rect(mvlr+mvspace*i, mvheight-(mvupdown+mvlength*a[i])+j, mvwidth, mvupdown+mvlength*a[i], round);
    rect(mvlr+mvspace*(iplus1), mvheight-(mvupdown+mvlength*a[iplus1])+j, mvwidth, mvupdown+mvlength*a[iplus1], round);
    if(j==(mvupdown+mvlength*a[i])+3 && m<mvspace){//schimbam dreapta/stanga
      if(m<mvspace-1)
        fill(#00ff00);
      else fill(#102439);
      rect(mvlr+mvspace*i+m, mvheight-(mvupdown+mvlength*a[i])+j, mvwidth, mvupdown+mvlength*a[i], round);
      rect(mvlr+mvspace*(iplus1)-m, mvheight-(mvupdown+mvlength*a[iplus1])+j, mvwidth, mvupdown+mvlength*a[iplus1], round);
      if(m==mvspace-1 && s<(mvupdown+mvlength*a[i])+4){
         fill(#00ff00);
      rect(mvlr+mvspace*i+m, mvheight-(mvupdown+mvlength*a[i])+j-s, mvwidth, mvupdown+mvlength*a[i], round);
        rect(mvlr+mvspace*(iplus1)-m, mvheight-(mvupdown+mvlength*a[iplus1])+j-s, mvwidth, mvupdown+mvlength*a[iplus1], round);
         //  }
          if(s==(mvupdown+mvlength*a[i])+3){
            swap(i,iplus1);  
          }
        s++;
      }else {m++;s=0;}
    }else {m=0;j++;}
  }else {
    j=0;i++;
    if(iplus1<a.length){iplus1++;}
  }
 }else {stop++;i=0;iplus1=1;if(i==a.length){i++;iplus1++;}}
  if(stop>a.length){noLoop();}
  
}
void swap(int i,int iplus1){
  int t=a[i];
  a[i]=a[iplus1];
  a[iplus1]=t;
}
