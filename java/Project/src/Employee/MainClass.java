package Employee;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Calendar;

public class MainClass {

	static final String DATA;
	static ArrayList<String> name;
	
	static {
		
		DATA = "C:\\Users\\tjddb\\OneDrive\\바탕화~1-DESKTOP-F4154AD-875\\프로젝트\\직원더미.txt";
		name = new ArrayList<String>();
		
	}
	
	public static void main(String[] args) {
		
		try {
			BufferedReader reader = new BufferedReader (new FileReader(DATA));
			
			String line = "";
			
			while((line=reader.readLine()) != null){
				
				String[] temp = line.split("■");
				
				name.add(temp[1]);
				//System.out.println(temp[1]);
				//System.out.println(name);
				
			}
			reader.close();
			
			
			
		} catch (Exception e) {
			//System.out.println(e);
			//System.out.println("에러야!");
		}
		
		Calendar date = Calendar.getInstance();
		Calendar now = Calendar.getInstance();
		
		date.set(2021, 3, 12);
		//2021-01-01,홍길동,08:21,18:11
		
		long tick = now.getTimeInMillis()-date.getTimeInMillis();
		
		int day = (int)(tick/1000/60/60/24);//122
		
		System.out.println(day);
		
		
		for(int j=0; j<40; j++) {
			
			
			date.add(Calendar.DATE, 1);
			//System.out.printf("%tF\n", date);
			
			if(date.get(Calendar.DAY_OF_WEEK)>1 && date.get(Calendar.DAY_OF_WEEK)<7 ) {
				
				for(int i=0; i<100; i++) {
					String workIn = String.format("%02d:%02d",((int)(Math.random()*2)+7), (int)(Math.random()*60));;
					String workOut = String.format("%02d:%02d",((int)(Math.random()*2)+18), (int)(Math.random()*60));
					System.out.printf("%tF,%s,%s,%s\n",date,name.get(i),workIn,workOut);
					
				}
				
				
			}
			
		}
		
		
//		
//		
//		
      
    	   
        
	}//main
	
}
