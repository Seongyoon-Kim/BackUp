package com.test.question.q22;

public class Packer {
	
	private static int pencilCount = 0;
	private static int eraserCount = 0;
	private static int ballPointPenCount = 0;
	private static int rulerCount = 0;
	
	
	public static int getPencilCount() {
		return pencilCount;
	}

	public static void setPencilCount(int pencilCount) {
		Packer.pencilCount = pencilCount;
	}

	public static int getEraserCount() {
		return eraserCount;
	}

	public static void setEraserCount(int eraserCount) {
		Packer.eraserCount = eraserCount;
	}

	public static int getBallPointPenCount() {
		return ballPointPenCount;
	}

	public static void setBallPointPenCount(int ballPointPenCount) {
		Packer.ballPointPenCount = ballPointPenCount;
	}

	public static int getRulerCount() {
		return rulerCount;
	}

	public static void setRulerCount(int rulerCount) {
		Packer.rulerCount = rulerCount;
	}

	public void packing(Pencil pencil) {
		
		
		System.out.printf("포장 전 검수: %s 진하기 연필입니다.\n", pencil.info());
		
		pencilCount++;
		
		System.out.println("포장을 완료했습니다.\n");
		
	}
	
	public void packing(Eraser eraser) {
		
		System.out.printf("포장 전 검수: %s 사이즈 지우개입니다.\n", eraser.info());
		
		eraserCount++;
		
		System.out.println("포장을 완료했습니다.\n");
		
	}
	
	public void packing(BallPointPen ballPointPen) {
		
		System.out.printf("포장 전 검수: %s 색상 %.1fmm 볼펜입니다.\n", ballPointPen.info2(), ballPointPen.info1());
		
		ballPointPenCount++;
		
		System.out.println("포장을 완료했습니다.\n");
	
	}
	
	public void packing(Ruler ruler) {
		
		System.out.printf("포장 전 검수: %dcm %s입니다.\n", ruler.info1(), ruler.info2());
		
		rulerCount++;
		
		System.out.println("포장을 완료했습니다.\n");
	}
	
	public static void countPacking(int type) {
		
		System.out.println("================");
		System.out.println("포장 결과");
		System.out.println("================");
		
		if (type == 0) {
			
			System.out.printf("연필: %d회\n", pencilCount);
			System.out.printf("지우개: %d회\n", eraserCount);
			System.out.printf("볼펜: %d회\n", ballPointPenCount);
			System.out.printf("자: %d회\n\n", rulerCount);
			
		} else if (type == 1) {
			
			System.out.printf("연필: %d회\n\n", pencilCount);
			
		} else if (type == 2) {
			
			System.out.printf("지우개: %d회\n\n", eraserCount);
			
		} else if (type == 3) {
			
			System.out.printf("볼펜: %d회\n\n", ballPointPenCount);
			
		} else if (type == 4) {
			
			System.out.printf("자: %d회\n\n", rulerCount);
			
		}
		
		
	}

}//Packer
