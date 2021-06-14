package ver2_lec05.collectionframework03;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public class ListSpeedTest {
	
	public static void main(String[] args) {
		
		long startMillis = System.currentTimeMillis();
		ArrayList arList = new ArrayList();
		
		for (int i = 0; i < 10000000; i++) {
			arList.add(i);
		}
		
		long endMillis = System.currentTimeMillis();
		long difMillis = endMillis - startMillis;
		System.out.println("차이 ArrayList: " + difMillis);
		
		startMillis = System.currentTimeMillis();
		LinkedList lkList = new LinkedList();
		
		for (int i = 0; i < 10000000; i++) {
			lkList.add(i);
		}
		
		endMillis = System.currentTimeMillis();
		difMillis = endMillis - startMillis;
		
		System.out.println("차이 LinkedList: " + difMillis);
		
	}

}
