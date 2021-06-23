package ver2_lec05.fileIO05.training02;

import java.io.FileInputStream;

public class IOManyFunction05 {
	
	public static void main(String[] args) {
		
		FileInputStream fis = null;
		
		try {
			
			fis = new FileInputStream("C:\\dev\\FileIOTextFile.txt");
			
			byte[] by = new byte[10];
			while (true) {
				int read = fis.read(by);
				if (read == -1) {
					break;
				}
				String msg = new String(by, 0, read);
				System.out.println(msg);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (fis != null) {
					
				}
			} catch (Exception e) {
				
			}
		}
		
	}

}
