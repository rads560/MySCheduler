
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;

public class Client extends Thread {

	public  String line;
	public String user;
	
	private BufferedReader br;
	
	public Client (BufferedWriter bw, BufferedReader br) {
		this.br = br;
		System.out.println("Connected! [ in ChatClient() ]");
		this.start();
	}
	public void run() {
		try {
			while(true) {
	
			    // Format: message = "monday-8,tuesday-8"

			    // read in message
			    String message = br.readLine();
			    
			    String [] halves = message.split(":");
			    //user = halves[0];
			    
			    if(halves[0].contentEquals("Connected")) {
			    	if(user.isEmpty()) {
			    		user = halves[1];
			    	}
			    }
			    //split message into individual times
			    String [] times = (halves[1]).split(",");
			    
			   
			    String [] timeslot = times[0].split("-");
			    
			    // Call jdbc function to add each time
			    JDBCDriver.takeTime(JDBCDriver.GetIdByName(user), timeslot[0], Integer.parseInt(timeslot[1]), false);
			}
				
		}catch(IOException ioe) {
			System.out.println("ioe in run: " + ioe.getMessage());
	   }
	}
}
