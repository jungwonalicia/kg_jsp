package bean;

import java.util.ArrayList;

public class 컨테이너생성2 {

	public static void main(String[] args) {
		ArrayList<BbsVO> list = new ArrayList<>();
		
		BbsVO bag1 = new BbsVO();
		bag1.setNo("1");
		bag1.setTitle("test");
		bag1.setContent("test");
		bag1.setWriter("test");
		
		BbsVO bag2 = new BbsVO();
		bag2.setNo("2");
		bag2.setTitle("test2");
		bag2.setContent("test2");
		bag2.setWriter("test2");
		
		list.add(bag1);
		list.add(bag2);
		
		System.out.println(list.size() +"개");
		
		for (BbsVO bag : list) {
			System.out.println(bag.getNo());
			System.out.println(bag.getTitle());
			System.out.println(bag.getContent());
			System.out.println(bag.getWriter());
			System.out.println("----------");
		}
		
		
		

	}

}
