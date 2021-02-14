package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

//bbs테이블에 crud기능을 할 수 있는 db전담 클래스
//CRUD
public class BbsDAO {
	public int create(BbsVO bag) throws Exception {
		//자동import: 컨트롤+쉬프트+o(영문)
		//db처리해야함.
		//1. 드라이버를 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 드라이버 설정 성공");
		
		//2. db연결(ip/db명, id, pw)
		String url = "jdbc:mysql://localhost:3366/shop";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);//Connection
		System.out.println("2. db연결 성공");
		
		//3. SQL문을 만든다.(Create기능 구현):ORM
		String sql = "insert into bbs values (?, ?, ?, ?)"; //인덱스는 1부터 시작!!
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getNo());
		ps.setString(2, bag.getTitle());
		ps.setString(3, bag.getContent());
		ps.setString(4, bag.getWriter());
		
		System.out.println("3. SQL문을 만든다. 성공");
		
		//4. SQL문을 db mysql에 전송.
		int result = ps.executeUpdate(); //count값을 db가 반환(1:성공, 0:실패)
		if (result != 0) {
			System.out.println("bbs테이블에 넣는 것 성공!");
		} else {
			System.out.println("bbs테이블에 넣는 것 실패!");
		}
		System.out.println("4. SQL문을 db mysql에 전송. 성공");
		
		return result; //0, 1
	}
	
	public ArrayList<BbsVO> all() throws Exception {
		
		//가방들이 들어간 컨테이너 역할의 클래스가 필요
		ArrayList<BbsVO> list = new ArrayList<>();
		
		//1. 드라이버를 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 드라이버 설정 성공");
		
		//2. db연결(ip/db명, id, pw)
		String url = "jdbc:mysql://localhost:3366/shop";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);//Connection
		System.out.println("2. db연결 성공");
		
		//3. SQL문을 만든다.(Read기능 구현)
		String sql = "select * from bbs"; //인덱스는 1부터 시작!!
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3. SQL문을 만든다. 성공");
		
		//
		ResultSet rs = ps.executeQuery();
		//System.out.println("검색의 결과는>> " + rs.next()); //결과 row가 있는지 체크해주는 메서드, true/false
		
		//jsp로 데이터를 반환할 가방역할
		while(rs.next()) {//true이면, 결과값이 있다라는 이야기
			BbsVO bag2 = new BbsVO();
			String no = rs.getString(1); //no항목,컬럼, 열, 필드, 속성
			String title = rs.getString(2);
			String content = rs.getString(3);
			String writer = rs.getString(4);
			
			//전달할 목적으로 각 값들을 가방에 넣어둠.
			bag2.setNo(no);
			bag2.setTitle(title);
			bag2.setContent(content);
			bag2.setWriter(writer);
			
			list.add(bag2);
		}
		return list;
	}

	public BbsVO one(BbsVO bag) throws Exception {
		//1. 드라이버를 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 드라이버 설정 성공");
		
		//2. db연결(ip/db명, id, pw)
		String url = "jdbc:mysql://localhost:3366/shop";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);//Connection
		System.out.println("2. db연결 성공");
		
		//3. SQL문을 만든다.(Read기능 구현)
		String sql = "select * from bbs where no = ?"; //인덱스는 1부터 시작!!
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getNo());
		System.out.println("3. SQL문을 만든다. 성공");
		
		//
		ResultSet rs = ps.executeQuery();
		//System.out.println("검색의 결과는>> " + rs.next()); //결과 row가 있는지 체크해주는 메서드, true/false
		
		BbsVO bag2 = new BbsVO();//jsp로 데이터를 반환할 가방역할
		if(rs.next()) {//true이면, 결과값이 있다라는 이야기
			//결과테이블에서 각 항목에 해당하는 값들을 하나씩 추출해주면 됨.
			//object         rdb            mapping(ORM)
			//검색된 결과에서 추출해서 변수에 넣어둠.
			String no = rs.getString(1); //no항목,컬럼, 열, 필드, 속성
			String title = rs.getString(2);
			String content = rs.getString(3);
			String writer = rs.getString(4);
			
			//전달할 목적으로 각 값들을 가방에 넣어둠.
			bag2.setNo(no);
			bag2.setTitle(title);
			bag2.setContent(content);
			bag2.setWriter(writer);
		}
		return bag2;
	}

	public int update(BbsVO bag) throws Exception {
		//자동import: 컨트롤+쉬프트+o(영문)
		//db처리해야함.
		//1. 드라이버를 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 드라이버 설정 성공");
		
		//2. db연결(ip/db명, id, pw)
		String url = "jdbc:mysql://localhost:3366/shop";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);//Connection
		System.out.println("2. db연결 성공");
		
		//3. SQL문을 만든다.(Create기능 구현)
		String sql = "update bbs set content = ? where no = ?"; //인덱스는 1부터 시작!!
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getContent());
		ps.setString(2, bag.getNo());
		
		System.out.println("3. SQL문을 만든다. 성공");
		
		//4. SQL문을 db mysql에 전송.
		int result = ps.executeUpdate();
		System.out.println("4. SQL문을 db mysql에 전송. 성공");
		return result;
	}

	public void delete(String no) throws Exception {
		//자동import: 컨트롤+쉬프트+o(영문)
		//db처리해야함.
		//1. 드라이버를 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 드라이버 설정 성공");
		
		//2. db연결(ip/db명, id, pw)
		String url = "jdbc:mysql://localhost:3366/shop";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);//Connection
		System.out.println("2. db연결 성공");
		
		//3. SQL문을 만든다.(Create기능 구현)
		String sql = "delete from bbs where no = ?"; //인덱스는 1부터 시작!!
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, no);
		
		System.out.println("3. SQL문을 만든다. 성공");
		
		//4. SQL문을 db mysql에 전송.
		ps.executeUpdate();
		System.out.println("4. SQL문을 db mysql에 전송. 성공");
	}
}
