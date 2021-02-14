package bean;

import javax.swing.JOptionPane;

public class 게시판글쓰기 {

	public static void main(String[] args) throws Exception {
		String no = JOptionPane.showInputDialog("no입력");
		String title = JOptionPane.showInputDialog("title입력");
		String content = JOptionPane.showInputDialog("content입력");
		String writer = JOptionPane.showInputDialog("writer입력");
		
		BbsVO bag = new BbsVO(); //가방을 만들어서
		bag.setNo(no); //해당 값들을 가방에 하나씩 넣어줌
		bag.setTitle(title);
		bag.setContent(content);
		bag.setWriter(writer);
		
		BbsDAO dao = new BbsDAO();
//		dao.create(no, title, content, writer);
		dao.create(bag);
	}

}
