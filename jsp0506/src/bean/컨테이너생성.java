package bean;

import java.util.ArrayList;

public class 컨테이너생성 {

	public static void main(String[] args) {
		ArrayList<String> list = new ArrayList<>();
		list.add("가방");
		list.add("신발");
		list.add("휴대폰");
		//크기가 유동적, 아무타입 다 넣을 수 있다.
		System.out.println(list.size());

	}

}
