package ver2_lec05.generics02.ex01;

public class ExeA<T> {
	
	private T t;
	
	public ExeA(T t) {
		this.t = t;
	}
	
	public T getT() {
		return t;
	}

}
