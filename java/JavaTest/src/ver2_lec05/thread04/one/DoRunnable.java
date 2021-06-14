package ver2_lec05.thread04.one;

public class DoRunnable implements Runnable{

	private String message;
	private int interruptInterval;
	
	public DoRunnable(String message, int interruptInterval) {
		this.message = message;
		this.interruptInterval = interruptInterval;
	}
	
	@Override
	public void run() {
		
		for (int i=0; i<3; i++) {
			
			try {
				Thread.sleep(interruptInterval);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			System.out.println(message);
		}
		
	}
	
	

}
