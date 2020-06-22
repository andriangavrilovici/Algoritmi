import processing.serial.*;
int[] a = new int [10];
void setup(){
   size(1366, 768);
   for (int i=0; i<a.length; i++) {
    a[i] = (int)random(7);
  }frameRate(45);
}
/*rect(mutarea la >dreapta / <stanga 1, mutarea in <jos / >sus 2, grosimea 3, lungirea in jos 4, rotungirea 5);*/
int i=1,j=0,m=0,s=0,tmp=0,jos=0;int jplus1=0,iminus1=0;int lp=0;
void draw(){
  int mvlr=490,mvspace=35,mvheight=350,mvwidth=25,mvupdown=30,mvlength=35,round=25;
   background(#102439);
  noStroke();
  fill(204, 102, 0);
  for(int k=0;k<a.length;k++){
    rect(mvlr+mvspace*k, (mvheight+1)-(mvupdown+mvlength*a[k]), mvwidth, (mvupdown-2)+mvlength*a[k], round);
  }
  if(i<a.length){
     j=i-1;tmp=a[i];
    if(a[j]>tmp && j>=0){
      fill(#102439);
    rect(mvlr+mvspace*(j+1), mvheight-(mvupdown+mvlength*a[j+1]), mvwidth, mvupdown+mvlength*a[j+1], round);
      
      if(a[j]>tmp && j>=0 && jos<(mvupdown+mvlength*a[j+1])+35){
        //dam in jos
        //if(jos<(mvupdown+mvlength*a[j+1])+3)
          fill(#00ff00);
        //else fill(#102439);
      rect(mvlr+mvspace*(j+1), mvheight-(mvupdown+mvlength*a[j+1])+jos, mvwidth, mvupdown+mvlength*a[j+1], round);
        jos++;
        if(jos>(mvupdown+mvlength*a[j+1]) && m<mvspace){
           fill(#00ff00);
           //if(a[j]>a[j+1]){
              rect(mvlr+mvspace*(j)+m, mvheight-(mvupdown+mvlength*a[j]), mvwidth, mvupdown+mvlength*a[j], round);
              m++;
            //}else m=0;
          a[j+1]=a[j];
          j--;
        }else{m=0;}
      }else jos=0;
     // a[j+1]=a[j];
      
    }else {i++;jos=0;}
    if(a[j]<tmp)a[j+1]=tmp;
  }else {i=1;}

}
