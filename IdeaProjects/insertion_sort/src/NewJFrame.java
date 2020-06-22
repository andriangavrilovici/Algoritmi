import javax.swing.*;
import java.awt.*;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
public class NewJFrame extends JFrame implements Runnable{
    Thread Y;JButton[] num_array;int []A;int Swap_mode;
    public NewJFrame(){
        initComponents();
        Y=new Thread(this);
    }
   // @SuppressWarnings(unchecked);
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt){
        A=new int[6];
        if (jTextField1.getText().isEmpty()){
            JOptionPane.showMessageDialog(null,"Please insert a number","Warning",2);
            jTextField1.grabFocus();
        }else if (jTextField2.getText().isEmpty()){
            JOptionPane.showMessageDialog(null,"Please insert a number","Warning",2);
            jTextField1.grabFocus();
        }else if (jTextField3.getText().isEmpty()){
            JOptionPane.showMessageDialog(null,"Please insert a number","Warning",2);
            jTextField1.grabFocus();
        }else if (jTextField4.getText().isEmpty()){
            JOptionPane.showMessageDialog(null,"Please insert a number","Warning",2);
            jTextField1.grabFocus();
        }else if (jTextField5.getText().isEmpty()){
            JOptionPane.showMessageDialog(null,"Please insert a number","Warning",2);
            jTextField1.grabFocus();
        }else if (jTextField6.getText().isEmpty()){
            JOptionPane.showMessageDialog(null,"Please insert a number","Warning",2);
            jTextField1.grabFocus();
        }
        else{
            A[0]=Integer.parseInt(jTextField1.getText());
            A[1]=Integer.parseInt(jTextField1.getText());
            A[2]=Integer.parseInt(jTextField1.getText());
            A[3]=Integer.parseInt(jTextField1.getText());
            A[4]=Integer.parseInt(jTextField1.getText());
            A[5]=Integer.parseInt(jTextField1.getText());
        }
        jButton2.setText(jTextField1.getText());
        jButton3.setText(jTextField2.getText());
        jButton4.setText(jTextField3.getText());
        jButton5.setText(jTextField4.getText());
        jButton6.setText(jTextField5.getText());
        jButton8.setText(jTextField6.getText());
        num_array=new JButton[]{jButton2,jButton3,jButton4,jButton5,jButton6,jButton8};
        Swap_mode=1;
        Y.start();
    }
    public static void main(String args[]){
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
               new NewJFrame().setVisible(true);
            }
        });
    }
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JLabel line1;
    private javax.swing.JLabel line2;
    private javax.swing.JLabel line3;
    private javax.swing.JLabel line4;
    private javax.swing.JLabel line5;
    private javax.swing.JLabel line6;
    private javax.swing.JLabel line7;
    //end of variables declaration
    public void run(){
        if (Swap_mode==1) {
            int i,j,key;
            for ( i=1; i<A.length; i++) {
                key=A[i];
                j=i;
                while(j>0&&A[j-1]>key){
                    A[j]=A[j-1];
                    j--;
                    try{
                        swap2(j,j+1);
                        assignchanux(key);
                    }catch(InterruptedException ex){

                    }
                }
                A[j]=key;
            }
        }
    }
    public void assignchanux(int x){
        System.out.println(x);
    }
    public void swap2(int num1,int num2) throws InstantiationException{
        for (int i=0; i<20; i++) {
            num_array[num1].setLocation(num_array[num1].getLocation().x,num_array[num1].getLocation().y+1);
        }
    }
}
