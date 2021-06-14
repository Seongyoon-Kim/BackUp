package ver2_lec02;

public class ProgramInterfaceImpl implements ProgramInterface{

	@Override
	public void start() {
		System.out.println("프로그램을 시작합니다");
	}

	@Override
	public void stop() {
		System.out.println("프로그램을 종료합니다.");
	}

	@Override
	public void run() {
		System.out.println("프로그램을 실행합니다.");
	}

	@Override
	public void shutdown() {
		System.out.println("실행 중인 프로그램을 멈춥니다.");
	}
	
	

}
