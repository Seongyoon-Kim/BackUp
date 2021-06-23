package ver2_lec05.fileIO05.training02;

import java.io.UnsupportedEncodingException;

public class IOManyFunction02 {
	
	public static void main(String[] args) throws UnsupportedEncodingException {
		
		String strProperty = System.getProperty("file.encoding");
		System.out.println("strProperty: " + strProperty);
		
		String msg1 = String.valueOf("한글");
		
		byte[] bytes = msg1.getBytes();
		byte[] ms949s = msg1.getBytes("MS949");
		byte[] eucKrs = msg1.getBytes("EUC-KR");
		byte[] utf8s = msg1.getBytes("utf-8");
		
		System.out.println("bytes: " + bytes);
		System.out.println("ms949s: " + ms949s);
		System.out.println("eucKrs: " + eucKrs);
		System.out.println("utf8s: " + utf8s);
		System.out.println();
		
		String strBytes = new String(bytes);
		String strMs949 = new String(ms949s, "MS949");
		String strEucKr = new String(eucKrs, "EUC-KR");
		String strUtf8 = new String(utf8s, "UTF-8");
		
		System.out.println("strBytes: " + strBytes);
		System.out.println("strMs949: " + strMs949);
		System.out.println("strEucKr: " + strEucKr);
		System.out.println("strUtf8: " + strUtf8);
		
	}

}
