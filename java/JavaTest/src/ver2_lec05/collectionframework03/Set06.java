package ver2_lec05.collectionframework03;

import java.util.ArrayList;
import java.util.HashSet;

public class Set06 {
	
	public static void main(String[] args) {
		
		HashSet hashSet = new HashSet();
		
		hashSet.add(1);
		hashSet.add(2);
		hashSet.add(1);
		System.out.println(hashSet.toString());
		
		ArrayList arrayList = new ArrayList();
		arrayList.add(1);
		arrayList.add(2);
		arrayList.add(1);
		
		System.out.println(arrayList.toString());
		
	}

}
