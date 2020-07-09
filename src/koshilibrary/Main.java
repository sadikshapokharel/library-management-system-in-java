
package koshilibrary;

public class Main {

    public static void main(String[] args) {
        Splash splash = new Splash();
        splash.setVisible(true);
        Dashboard dashboard = new Dashboard();
        Login login = new Login();
        
        try {
            for(int i=0;i<=100;i++){
                Thread.sleep(30);
                splash.lblPercent.setText(Integer.toString(i)+"%");
                splash.PB.setValue(i);
                if(i==100){
                    splash.setVisible(false);
                    //dashboard.setVisible(true);
                    login.setVisible(true);
                }
            }
        } 
        catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    
}
