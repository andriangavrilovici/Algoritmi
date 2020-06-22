import javax.swing.*;
public class MainWindow extends JFrame{
    public MainWindow(){
        setTitle("Zmeika");
        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        setSize(1366,768);
        setLocation(400,400);
        add(new Field());
        setVisible(true);
    }
    public static void main(String[] args) {
        MainWindow mw = new MainWindow();
    }
}
