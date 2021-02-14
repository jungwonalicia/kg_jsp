package bean;

public class 계산기 {
	//add, mul 기능 2개=> 메서드 2개
	//메서드(매개변수, 매개변수, ....)
	public void add(int x, int y) {
		System.out.println(x + y);
	}
	public int mul(int x, int y) {
		int result = x * y;
		return result;
	}
}
