package lec04;

/**
 * 구매문서
 * @author Seongyoon Kim
 *
 */
public class ProcurementDocument {
	
	public int procureRequestDocumentQty;
	public int orderRequestDOcumentQty;
	public int orderDocumentQty;
	public int contractDocumentQty;
	public int estimateDocumentQty;
	
	public int totalDocumentQtyDailyMake() {
		
		int totalDocument = procureRequestDocumentQty + orderRequestDOcumentQty + orderDocumentQty + contractDocumentQty + estimateDocumentQty;
		
		return totalDocument;
		
	}
	
	public int staticValueCaculateDailyDocument() {
		
		int totalDocumentCnt = 0;
		
		totalDocumentCnt = 10 + 5 + 1 + 3 + 5;
		
		return totalDocumentCnt;
		
	}

}
