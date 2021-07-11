package java_standard.new_time;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAdjuster;

class DayAfterTomorrow implements TemporalAdjuster {
	@Override
	public Temporal adjustInto (Temporal temporal) {
		return temporal.plus(2, ChronoUnit.DAYS);
	}
}

public class NewTimeEx3 {
	
	public static void main(String[] args) {
		
		LocalDate today = LocalDate.now();
		LocalDate date = today.with(new DayAfterTomorrow());
		
		p(today);	// System.out.println(today);
		p(date);
		p(today.with(firstDayOfNextMonth()));			// 다음 달의 첫 날
		p(today.with(firstDayOfMonth()));				// 이 달의 첫날
		p(today.with(lastDayOfMonth()));				// 이 달의 마지막 날
		p(today.with(firstInMonth(TUESDAY)));			// 이 달의 첫번째 화요일
		p(today.with(lastInMonth(TUESDAY)));			// 이 달의 마지막 화요일
		p(today.with(previous(TUESDAY)));				// 지난 주 화요일
		p(today.with(previousOrSame(TUESDAY))); 		// 지난 주 화요일(오늘 포함)
		p(today.with(next(TUESDAY)));					// 다음 주 화요일
		p(today.with(nextOrSame(TUESDAY)));				// 다음 주 화요일(오늘 포함)
		p(today.with(dayOfWeekInMonth(4, TUESDAY)));	// 이 달의 4번째 화요일
		
	}
	
	static void p(Object obj) {
		System.out.println(obj);
	}

}
