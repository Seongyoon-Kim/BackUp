package ver2_lec02;

public class MainMethod {
	
	public static void main(String[] args) {
		
		ProgramInterfaceImpl programInterfaceImpl = new ProgramInterfaceImpl();
		
		programInterfaceImpl.start();
		programInterfaceImpl.run();
		programInterfaceImpl.shutdown();
		programInterfaceImpl.stop();
		
	}

}
