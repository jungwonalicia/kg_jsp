package bean;

public class 계산기사용 {

	public static void main(String[] args) {
		계산기 cal = new 계산기();
		cal.add(5000, 3000); //메서드 사용=> 메서드 호출
		int price = 5000;
		int count = 5;
		
		//곱한 결과값이 20000이 넘으면 5000을 할인!
		int data = cal.mul(price, count); //data => 25000
		if (data >= 20000) {
			System.out.println(data - 5000);
		}else {
			System.out.println(data);
		}
	}

}
